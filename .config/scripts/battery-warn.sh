#!/bin/bash

# Configuration
THRESHOLD=10
BATTERY="BAT0"
AC_STATUS=$(cat /sys/class/power_supply/AC/online)
CAPACITY=$(cat /sys/class/power_supply/$BATTERY/capacity)

# Only notify if discharging
if [ "$AC_STATUS" -eq 0 ]; then
    if [ "$CAPACITY" -le "$THRESHOLD" ]; then
        # Use notify-send with urgency and an icon if possible
        notify-send -u critical "Battery Critical" "Only ${CAPACITY}% left! Plug in now before imminent shutdown occurs!"
    fi
fi
