#!/bin/bash

# Terminate already running waybar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -u $UID -x waybar >/dev/null; do sleep 1; done

# Launch Waybar
waybar &
