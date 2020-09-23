#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

source ~/dotfiles/polybar/.env

# Launch top and bottom bars
polybar top &
# polybar bottom &

echo "Bars launched..."
