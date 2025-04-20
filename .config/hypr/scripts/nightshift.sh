#!/bin/bash

INTERVAL=600

while true; do
    if [ $(date +%H) -ge 18 ] || [ $(date +%H) -le 8 ]; then
        sleep 2
        hyprctl hyprsunset temperature 3000
    else
        hyprctl hyprsunset identity
    fi
    sleep $INTERVAL
done
