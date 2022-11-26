#!/bin/sh

updates=$(apt list --upgradable 2> /dev/null | grep -c upgradable);

if [ "$updates" -gt 0 ]; then
    echo "%{F#E6E6E6}%{T2}ﮮ%{T-}%{F-} $updates"
else
    echo ""
fi
