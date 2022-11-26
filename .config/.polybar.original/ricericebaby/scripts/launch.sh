#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar--
  polybar -c ~/.config/polybar/ricericebaby/config.ini head &
  polybar -c ~/.config/polybar/ricericebaby/config.ini tail &
  polybar -c ~/.config/polybar/ricericebaby/config.ini hdmi &
echo "Polybars Populated!"
