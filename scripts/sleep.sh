swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 600 'hyprctl dispatch dpms off && systemct suspend' \
            before-sleep 'swaylock -f -c 000000' &
