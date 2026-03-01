#!/usr/bin/env python3
import rospy
from std_msgs.msg import String, Int32, Bool
from std_srvs.srv import Trigger

class SupervisorFSM:
    def __init__(self):
        self.rate_hz = rospy.get_param("~rate_hz", 5.0)
        self.confirm_threat_min = rospy.get_param("~confirm_threat_min", 1)
        self.alert_threat_min   = rospy.get_param("~alert_threat_min", 2)
        self.confirm_timeout_s  = rospy.get_param("~confirm_timeout_s", 8.0)
        self.alert_hold_s       = rospy.get_param("~alert_hold_s", 5.0)

        self.pir = False
        self.gas = 0
        self.flame = False
        self.threat = 0

        self.mode = "NORMAL"
        self.confirm_enter_time = None
        self.alert_enter_time = None

        self.mode_pub  = rospy.Publisher("/system/mode", String, queue_size=10, latch=True)
        self.alert_pub = rospy.Publisher("/system/alert", Bool, queue_size=10, latch=True)

        rospy.Subscriber("/sensor/pir",   Bool,  lambda m: setattr(self, "pir", bool(m.data)))
        rospy.Subscriber("/sensor/gas",   Int32, lambda m: setattr(self, "gas", int(m.data)))
        rospy.Subscriber("/sensor/flame", Bool,  lambda m: setattr(self, "flame", bool(m.data)))
        rospy.Subscriber("/threat/level", Int32, lambda m: setattr(self, "threat", int(m.data)))

        # Service client (optional; we will wait only when needed)
        self.confirm_scan_srv = None

        self.publish_mode("NORMAL")
        self.timer = rospy.Timer(rospy.Duration(1.0 / self.rate_hz), self.step)
        rospy.loginfo("Supervisor FSM started.")

    def publish_mode(self, new_mode: str):
        if new_mode != self.mode:
            rospy.loginfo("MODE: %s -> %s (threat=%d pir=%s gas=%d flame=%s)",
                          self.mode, new_mode, self.threat, self.pir, self.gas, self.flame)
        self.mode = new_mode
        self.mode_pub.publish(String(data=self.mode))
        self.alert_pub.publish(Bool(data=(self.mode == "ALERT")))

        # When entering CONFIRM, trigger confirm scan service
        if new_mode == "CONFIRM":
            self.call_confirm_scan()

    def call_confirm_scan(self):
        try:
            if self.confirm_scan_srv is None:
                rospy.wait_for_service("/confirm_scan", timeout=2.0)
                self.confirm_scan_srv = rospy.ServiceProxy("/confirm_scan", Trigger)
            resp = self.confirm_scan_srv()
            rospy.loginfo("confirm_scan service: success=%s message=%s", resp.success, resp.message)
        except Exception as e:
            rospy.logwarn("confirm_scan service call failed: %s", str(e))

    def step(self, _evt):
        now = rospy.get_time()

        hazard = self.flame or (self.gas == 1)

        if hazard or self.threat >= self.alert_threat_min:
            if self.mode != "ALERT":
                self.alert_enter_time = now
                self.publish_mode("ALERT")
            return

        if self.mode == "ALERT":
            if self.alert_enter_time is None:
                self.alert_enter_time = now
            if (now - self.alert_enter_time) < self.alert_hold_s:
                return
            if self.pir or (self.threat >= self.confirm_threat_min):
                self.confirm_enter_time = now
                self.publish_mode("CONFIRM")
            else:
                self.publish_mode("NORMAL")
            return

        if self.mode == "NORMAL":
            if self.pir or (self.threat >= self.confirm_threat_min):
                self.confirm_enter_time = now
                self.publish_mode("CONFIRM")
            return

        if self.mode == "CONFIRM":
            if self.confirm_enter_time is None:
                self.confirm_enter_time = now

            if self.pir or (self.threat >= self.confirm_threat_min):
                if (now - self.confirm_enter_time) > self.confirm_timeout_s:
                    self.confirm_enter_time = now
                return

            self.publish_mode("NORMAL")
            return

def main():
    rospy.init_node("security_supervisor_fsm")
    SupervisorFSM()
    rospy.spin()

if __name__ == "__main__":
    main()