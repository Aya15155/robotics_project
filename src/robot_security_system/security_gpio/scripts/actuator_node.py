#!/usr/bin/env python3
import rospy
from std_msgs.msg import String, Float32
from std_srvs.srv import Trigger, TriggerResponse
import RPi.GPIO as GPIO
import time

LED_GPIO = 5
BUZZER_GPIO = 6
SERVO_GPIO = 18
SERVO_FREQ = 50

class Actuators:
    def __init__(self):
        rospy.init_node("actuator_node")

        GPIO.setmode(GPIO.BCM)
        GPIO.setup(LED_GPIO, GPIO.OUT)
        GPIO.setup(BUZZER_GPIO, GPIO.OUT)
        GPIO.setup(SERVO_GPIO, GPIO.OUT)

        self.pwm = GPIO.PWM(SERVO_GPIO, SERVO_FREQ)
        self.pwm.start(7.5)  # center

        self.mode = "NORMAL"
        self.distance = -1.0

        # Scan control
        self.scan_until = 0.0
        self.last_scan_time = 0.0
        self.scan_index = 0
        self.scan_angles = [70, 90, 110, 90]

        rospy.Subscriber("/system/mode", String, self.cb_mode)
        rospy.Subscriber("/sensor/distance_cm", Float32, self.cb_dist)

        # Service: start confirm scan
        self.srv = rospy.Service("/confirm_scan", Trigger, self.handle_confirm_scan)

        self.timer = rospy.Timer(rospy.Duration(0.2), self.step)
        rospy.loginfo("Actuator node started (LED=GPIO5, BUZZER=GPIO6, SERVO=GPIO18)")
        rospy.loginfo("Service available: /confirm_scan (std_srvs/Trigger)")

    def cb_mode(self, msg: String):
        self.mode = msg.data

    def cb_dist(self, msg: Float32):
        self.distance = float(msg.data)

    def handle_confirm_scan(self, _req):
        # Allow scan for 6 seconds (adjust if you want)
        self.scan_until = time.time() + 6.0
        self.scan_index = 0
        self.last_scan_time = 0.0
        return TriggerResponse(success=True, message="Confirm scan started for 6s")

    def servo_angle_to_dc(self, angle):
        return 2.5 + (angle / 180.0) * 10.0

    def set_servo(self, angle):
        self.pwm.ChangeDutyCycle(self.servo_angle_to_dc(angle))

    def step(self, _evt):
        now = time.time()

        # NORMAL
        if self.mode == "NORMAL":
            GPIO.output(LED_GPIO, False)
            GPIO.output(BUZZER_GPIO, False)
            self.set_servo(90)
            return

        # ALERT
        if self.mode == "ALERT":
            on = int(now * 2.5) % 2 == 0
            GPIO.output(LED_GPIO, on)
            GPIO.output(BUZZER_GPIO, on)
            self.set_servo(90)
            return

        # CONFIRM
        if self.mode == "CONFIRM":
            GPIO.output(LED_GPIO, True)      # LED stays ON in CONFIRM (by design)
            GPIO.output(BUZZER_GPIO, False)  # no buzzer in CONFIRM

            rospy.loginfo_throttle(1.0, "CONFIRM: distance_cm=%.2f scan_active=%s",
                                   self.distance, "YES" if (now < self.scan_until) else "NO")

            # Stop scanning if very close object
            if self.distance != -1.0 and self.distance < 15.0:
                self.set_servo(90)
                return

            # Only scan when service has been triggered
            if now < self.scan_until:
                if (now - self.last_scan_time) > 0.8:
                    self.last_scan_time = now
                    angle = self.scan_angles[self.scan_index]
                    self.scan_index = (self.scan_index + 1) % len(self.scan_angles)
                    self.set_servo(angle)
            else:
                # no scan request: keep centered
                self.set_servo(90)
            return

    def shutdown(self):
        GPIO.output(LED_GPIO, False)
        GPIO.output(BUZZER_GPIO, False)
        self.pwm.stop()
        GPIO.cleanup()

def main():
    a = Actuators()
    try:
        rospy.spin()
    finally:
        a.shutdown()

if __name__ == "__main__":
    main()