#!/bin/sh

case "$1" in
    --toggle)
        dunstctl set-paused toggle
        ;;
    *)
        if [ "$(dunstctl is-paused)" = "true" ]; then
            echo "%{F#E6E6E6}%{T2}%{T-}%{F-}"
        else
            echo "%{F#E6E6E6}%{T2}%{T-}%{F-}"
        fi
        ;;
esac
