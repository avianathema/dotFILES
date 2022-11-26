#!/bin/sh

if [ "$DESKTOP_SESSION" = "lightdm-xsession" ]; then 
   sleep 20s
   killall conky
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/battery.conf" &
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/clock.conf" &
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/cpu.conf" &
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/gpu.conf" &
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/ram.conf" &
   cd "$HOME/.conky/conky-pywal/configs"
   conky -c "$HOME/.conky/conky-pywal/configs/ssd.conf" &
   exit 0
fi
