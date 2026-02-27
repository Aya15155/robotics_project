#!/usr/bin/env python3
import os
import rospy
from datetime import datetime
from std_msgs.msg import String

class EventLogger:
    def __init__(self):
        rospy.init_node("event_logger")

        log_dir = os.path.expanduser("~/robot_project_logs")
        os.makedirs(log_dir, exist_ok=True)
        self.log_path = os.path.join(log_dir, "system_events.log")

        rospy.Subscriber("/system/mode", String, self.cb)
        rospy.loginfo("Event Logger started. Writing to %s", self.log_path)

    def cb(self, msg: String):
        ts = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        line = f"{ts},MODE,{msg.data}\n"
        with open(self.log_path, "a", encoding="utf-8") as f:
            f.write(line)
        rospy.loginfo(line.strip())

if __name__ == "__main__":
    EventLogger()
    rospy.spin()
