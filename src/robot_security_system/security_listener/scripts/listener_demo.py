#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def mode_callback(msg):
    rospy.loginfo("LISTENER NODE: System mode -> %s", msg.data)

def main():
    rospy.init_node("listener_demo")

    rospy.Subscriber("/system/mode", String, mode_callback)

    rospy.loginfo("Listener node started...")
    rospy.spin()

if __name__ == "__main__":
    main()
