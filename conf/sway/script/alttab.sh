#!/bin/bash

# Get available windows
windows=$(swaymsg -t get_tree | jq -r '.nodes[].nodes[].nodes[] | .. | (.id|tostring) + " " + .name?' | grep -e "[0-9]* ."  )

# Select window with rofi
#selected=$(echo "$windows" | wofi -dmenu -i -d | awk '{print $1}')
selected=$(echo "$windows" | wofi -d -i | awk '{print $1}')

echo $selected


# Tell sway to focus said window
swaymsg [con_id="$selected"] focus
