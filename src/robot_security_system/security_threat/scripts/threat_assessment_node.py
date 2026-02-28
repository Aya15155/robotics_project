#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool, Int32, String

pir_state = False
gas_state = 0
flame_state = False

def pir_cb(msg: Bool):
    global pir_state
    pir_state = msg.data

def gas_cb(msg: Int32):
    global gas_state
    gas_state = msg.data

def flame_cb(msg: Bool):
    global flame_state
    flame_state = msg.data

def main():
    rospy.init_node("threat_assessment_node")

    rospy.Subscriber("/sensor/pir", Bool, pir_cb)
    rospy.Subscriber("/sensor/gas", Int32, gas_cb)
    rospy.Subscriber("/sensor/flame", Bool, flame_cb)

    threat_pub = rospy.Publisher("/threat/level", String, queue_size=10, latch=True)

    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        # Simple fusion rule (Member C can refine)
        if flame_state or gas_state == 1:
            threat = "HIGH"
        elif pir_state:
            threat = "MEDIUM"
        else:
            threat = "LOW"

        threat_pub.publish(threat)
        rate.sleep()

if __name__ == "__main__":
    main()
