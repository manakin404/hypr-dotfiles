#!/bin/bash
WALLPAPER_DIR="$HOME/wallpaper"
TRANSITION="--transition-type grow
--transition-fps 120
--transition-pos 0.857,1.0
--transition-duration 2


"  
# Options: fade, wipe, grow, outer, wave

# Random wallpaper
if [[ "$1" == "random" ]]; then
    swww img $(find "$WALLPAPER_DIR" -type f | shuf -n 1) $TRANSITION

# Next wallpaper in order (cycling)
elif [[ "$1" == "next" ]]; then
    CURRENT=$(cat ~/.last_wallpaper 2>/dev/null || echo "")
    NEXT=$(ls -1 "$WALLPAPER_DIR"/* | grep -A1 "$CURRENT" | tail -n 1 || ls -1 "$WALLPAPER_DIR"/* | head -n 1)
    swww img "$NEXT" $TRANSITION
    echo "$NEXT" > ~/.last_wallpaper
fi
exit 0
