#!/bin/sh
# Times the screen off and puts it to background
swaylock -c 101010
swayidle \
    timeout 5 'swaymsg "output * dpms off"' \
    timeout 10 'sudo systemctl suspend' \
    resume 'swaymsg "output * dpms on"' 
# Locks the screen immediately
# Kills last background task so idle timer doesn't keep running
# kill %%
