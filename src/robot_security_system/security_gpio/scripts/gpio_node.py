#!/usr/bin/env python3
import rospy
from std_msgs.msg import Bool, Int32, Float32, String
import RPi.GPIO as GPIO
import time

# ==============================
# GPIO Pin Definitions (BCM)
# ==============================
PIR_GPIO   = 17
GAS_GPIO   = 27
FLAME_GPIO = 22

TRIG_GPIO  = 23
ECHO_GPIO  = 24

GAS_ACTIVE_LOW = True  # set False if your MQ-2 DO=1 means gas detected

def mode_cb(msg: String):
    # just logging; actuators handled in actuator node
    rospy.loginfo("System mode: %s", msg.data)

def read_distance_cm():
    # trigger pulse
    GPIO.output(TRIG_GPIO, True)
    time.sleep(0.00001)
    GPIO.output(TRIG_GPIO, False)

    start_time = time.time()
    timeout = start_time + 0.02  # 20ms

    # wait for echo start
    while GPIO.input(ECHO_GPIO) == 0:
        if time.time() > timeout:
            return None
        pulse_start = time.time()

    # wait for echo end
    while GPIO.input(ECHO_GPIO) == 1:
        if time.time() > timeout:
            return None
        pulse_end = time.time()

    duration = pulse_end - pulse_start
    return round(duration * 17150, 2)

def main():
    rospy.init_node("gpio_node")
    GPIO.setmode(GPIO.BCM)

    # Inputs
    GPIO.setup(PIR_GPIO, GPIO.IN)
    GPIO.setup(GAS_GPIO, GPIO.IN)
    GPIO.setup(FLAME_GPIO, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    # Ultrasonic
    GPIO.setup(TRIG_GPIO, GPIO.OUT)
    GPIO.setup(ECHO_GPIO, GPIO.IN)
    GPIO.output(TRIG_GPIO, False)
    time.sleep(0.1)

    # Publishers
    pir_pub   = rospy.Publisher("/sensor/pir", Bool, queue_size=10)
    gas_pub   = rospy.Publisher("/sensor/gas", Int32, queue_size=10)         # 1 when gas detected else 0
    flame_pub = rospy.Publisher("/sensor/flame", Bool, queue_size=10)        # True when flame detected
    dist_pub  = rospy.Publisher("/sensor/distance_cm", Float32, queue_size=10)

    rospy.Subscriber("/system/mode", String, mode_cb)

    rate = rospy.Rate(5)
    rospy.loginfo("GPIO node started (sensors + ultrasonic)")

    try:
        while not rospy.is_shutdown():
            # PIR
            pir_state = GPIO.input(PIR_GPIO)
            pir_pub.publish(bool(pir_state))

            # GAS
            gas_raw = GPIO.input(GAS_GPIO)
            gas_detected = (gas_raw == 0) if GAS_ACTIVE_LOW else (gas_raw == 1)
            gas_pub.publish(1 if gas_detected else 0)

            # FLAME (2-pin, active LOW)
            flame_raw = GPIO.input(FLAME_GPIO)
            flame_pub.publish(flame_raw == 0)

            # Distance
            d = read_distance_cm()
            if d is None or d > 400:
                dist_pub.publish(Float32(data=-1.0))
            else:
                dist_pub.publish(Float32(data=d))

            rate.sleep()

    finally:
        GPIO.cleanup()
        rospy.loginfo("GPIO cleaned up")

if __name__ == "__main__":
    main()