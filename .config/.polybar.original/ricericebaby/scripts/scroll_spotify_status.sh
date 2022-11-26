#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l  19 \
        --delay 0.3 \
        --scroll-padding "  " \
        --match-command "`dirname $0`/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 1" \
        --update-check true "`dirname $0`/get_spotify_status.sh" &

wait


#	-m "Playing" "-b '%{T2}ﱘ %{T-}'" \
#	-m "Paused" "-b '%{T2}ﱙ %{T-}' -s f" \
#	-m "Stopped" "-b '%{T2} %{T-}' -s f" 
