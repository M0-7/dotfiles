#!/bin/bash

STATUS=$(rfkill  | grep bluetooth | awk '{print $4}')

if [ $STATUS == "unblocked" ]; then
    notify-send "󰂯 Bluetooth enabled" --app-name=bluetooth
else
    notify-send "󰂲 Bluetooth disabled" --app-name=bluetooth
fi
