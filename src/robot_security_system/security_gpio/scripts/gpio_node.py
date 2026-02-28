#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool, Int32, String
import RPi.GPIO as GPIO

# ==============================
# GPIO Pin Definitions (BCM)
# ==============================
PIR_GPIO   = 17   # Physical Pin 11
GAS_GPIO   = 27   # Physical Pin 13 (Digital D0)
FLAME_GPIO = 22   # Physical Pin 15

def mode_cb(msg: String):
    rospy.loginfo("System mode: %s", msg.data)

def main():
    rospy.init_node("gpio_node")

    # ------------------------------
    # GPIO Setup
    # ------------------------------
    GPIO.setmode(GPIO.BCM)

    GPIO.setup(PIR_GPIO, GPIO.IN)
    GPIO.setup(GAS_GPIO, GPIO.IN)
    GPIO.setup(FLAME_GPIO, GPIO.IN)

    # ------------------------------
    # Publishers
    # ------------------------------
    pir_pub   = rospy.Publisher("/sensor/pir", Bool, queue_size=10)
    gas_pub   = rospy.Publisher("/sensor/gas", Int32, queue_size=10)
    flame_pub = rospy.Publisher("/sensor/flame", Bool, queue_size=10)

    rospy.Subscriber("/system/mode", String, mode_cb)

    rate = rospy.Rate(5)  # 5 Hz

    rospy.loginfo("GPIO node started")

    try:
        while not rospy.is_shutdown():

            # ---- PIR ----
            pir_state = GPIO.input(PIR_GPIO)
            rospy.loginfo("PIR raw state = %s", pir_state)
            pir_pub.publish(bool(pir_state))

            # ---- Gas (Digital) ----
            gas_state = GPIO.input(GAS_GPIO)
            gas_pub.publish(int(gas_state))

            # ---- Flame ----
            flame_state = GPIO.input(FLAME_GPIO)
            flame_pub.publish(bool(flame_state))

            rate.sleep()

    finally:
        GPIO.cleanup()
        rospy.loginfo("GPIO cleaned up")

if __name__ == "__main__":
    main()