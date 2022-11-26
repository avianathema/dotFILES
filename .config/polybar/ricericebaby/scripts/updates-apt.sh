#!/bin/sh

updates=$(apt list --upgradable 2> /dev/null | grep -c upgradable);

if [ "$updates" -gt 0 ]; then
    echo "%{F#719087}%{T2}ﮮ%{T-}%{F-} $updates"
else
    echo "%{F#c9c4bb}%{T2}ﮮ%{T-}%{F-} $updates"
fi
