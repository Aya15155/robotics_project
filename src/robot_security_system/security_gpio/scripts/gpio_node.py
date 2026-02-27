#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool, Int32, String

def mode_cb(msg: String):
    # Later you will use this to enable buzzer/LED/servo behaviors
    rospy.loginfo("System mode: %s", msg.data)

def main():
    rospy.init_node("gpio_node")

    pir_pub   = rospy.Publisher("/sensor/pir", Bool, queue_size=10)
    gas_pub   = rospy.Publisher("/sensor/gas", Int32, queue_size=10)
    flame_pub = rospy.Publisher("/sensor/flame", Bool, queue_size=10)

    rospy.Subscriber("/system/mode", String, mode_cb)

    rate = rospy.Rate(5)  # 5 Hz placeholder
    while not rospy.is_shutdown():
        # Placeholder values until GPIO reading is implemented
        pir_pub.publish(False)
        gas_pub.publish(0)
        flame_pub.publish(False)
        rate.sleep()

if __name__ == "__main__":
    main()
