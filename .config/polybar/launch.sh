#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait til processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar mybar &
