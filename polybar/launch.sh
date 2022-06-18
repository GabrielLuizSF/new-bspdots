#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/shades"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q bar-search -c "$DIR"/config.ini &
polybar -q bar-left -c "$DIR"/config.ini &
polybar -q bar-center -c "$DIR"/config.ini &
polybar -q bar-right -c "$DIR"/config.ini &
polybar -q bar-power -c "$DIR"/config.ini &
