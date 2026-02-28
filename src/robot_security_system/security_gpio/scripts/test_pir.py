
#!/usr/bin/env python3
from gpiozero import DigitalInputDevice
from signal import pause

PIR_GPIO = 17  # BCM numbering

pir = DigitalInputDevice(PIR_GPIO, pull_up=False)

print("PIR test started. Wait 30 seconds warm-up.\n")

pir.when_activated = lambda: print("MOTION DETECTED!")
pir.when_deactivated = lambda: print("No motion.")

pause()#!/usr/bin/env python3
from gpiozero import DigitalInputDevice
from signal import pause

PIR_GPIO = 17  # BCM numbering

pir = DigitalInputDevice(PIR_GPIO, pull_up=False)

print("PIR test started. Wait 30 seconds warm-up.\n")

pir.when_activated = lambda: print("MOTION DETECTED!")
pir.when_deactivated = lambda: print("No motion.")

pause()#!/usr/bin/env python3
from gpiozero import DigitalInputDevice
from signal import pause

PIR_GPIO = 17  # BCM numbering

pir = DigitalInputDevice(PIR_GPIO, pull_up=False)

print("PIR test started. Wait 30 seconds warm-up.\n")

pir.when_activated = lambda: print("MOTION DETECTED!")
pir.when_deactivated = lambda: print("No motion.")

paus
