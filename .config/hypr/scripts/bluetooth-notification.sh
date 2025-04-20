#!/bin/bash

STATUS=$(rfkill  | grep bluetooth | awk '{print $4}')

if [ $STATUS == "unblocked" ]; then
    notify-send "󰂯 Bluetooth enabled" --app-name=connectivity
else
    notify-send "󰂲 Bluetooth disabled" --app-name=connectivity
fi
