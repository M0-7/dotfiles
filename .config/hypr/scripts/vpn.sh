#!/bin/bash

STATUS="$(nmcli connection show --active | grep vpn)"

if [ "$STATUS" ]; then
    nmcli connection down id Netherlands
    notify-send " VPN is disabled" --app-name=connectivity
else
    nmcli connection up id Netherlands
    notify-send " VPN is enabled" --app-name=connectivity
fi
