#!/bin/bash

INTERVAL=300

while true; do
    PERCENTAGE=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d %)
    PROFILE="$(powerprofilesctl | grep "*" | awk '{print $2}' | tr -d :)"
    if [ $PERCENTAGE -le 30 ]; then
        if [ "$PROFILE" != 'power-saver' ]; then
           powerprofilesctl set power-saver
        elif [ $PERCENTAGE -le 5 ]; then
            notify-send " Plug your laptop in" --urgency=critical --app-name=battery
        fi
    else
        if [ "$PROFILE" == 'power-saver' ]; then
            powerprofilesctl set balanced
        fi
    fi
    sleep $INTERVAL
done
