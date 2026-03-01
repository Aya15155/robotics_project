#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool, Int32

pir_state = False
gas_state = 0
flame_state = False

def pir_cb(msg: Bool):
    global pir_state
    pir_state = bool(msg.data)

def gas_cb(msg: Int32):
    global gas_state
    gas_state = int(msg.data)

def flame_cb(msg: Bool):
    global flame_state
    flame_state = bool(msg.data)

def main():
    rospy.init_node("threat_assessment_node")

    rospy.Subscriber("/sensor/pir", Bool, pir_cb)
    rospy.Subscriber("/sensor/gas", Int32, gas_cb)
    rospy.Subscriber("/sensor/flame", Bool, flame_cb)

    # 0=LOW, 1=MEDIUM, 2=HIGH
    threat_pub = rospy.Publisher("/threat/level", Int32, queue_size=10, latch=True)

    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        if flame_state or gas_state == 1:
            threat = 2
        elif pir_state:
            threat = 1
        else:
            threat = 0

        threat_pub.publish(threat)
        rate.sleep()

if __name__ == "__main__":
    main()