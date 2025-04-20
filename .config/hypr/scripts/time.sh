#!/bin/bash

notify-send -h string:x-canonical-private-synchronous:audio --app-name=time --expire-time=3500 " $(date +'%a,%e %b, %Y %H:%M:%S')  Battery: $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}') "
