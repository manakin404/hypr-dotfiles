#!/bin/bash

# Set wallpaper directory in the WALLPAPER_DIR variable
WALLPAPER_DIR="$HOME/wallpaper"

# Function to start swww-daemon if not running
start_swww() {
  if ! pgrep -x "swww-daemon" > /dev/null; then
    echo "Starting swww-daemon..."
    swww-daemon &
    sleep 2
  fi
}

# Function to pick a random wallpaper using regex
pick_random_wallpaper() {
  # Old function
  # find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1
  find "$WALLPAPER_DIR" -type f -iregex '.*\.\(jpg\|jpeg\|png\|webp\)' | shuf -n 1
}

# Function to set wallpaper on all monitors
set_wallpaper_all_monitors() {
  local wallpaper="$1"
  monitors=$(hyprctl monitors -j | jq -r '.[].name')

  for mon in $monitors; do
    swww img "$wallpaper" --outputs "$mon" --transition-type any --transition-duration 1.5
  done
  echo "Wallpaper set on all monitors: $wallpaper"
}

# Function to apply color scheme
apply_theme() {
  local wallpaper="$1"
  wal -i "$wallpaper" --saturate 0.7
  # matugen image "$wallpaper"
  echo "Color scheme applied based on $wallpaper"
}

### --- Main Execution ---
start_swww
wallpaper=$(pick_random_wallpaper)

if [[ -z "$wallpaper" ]]; then
  echo "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

set_wallpaper_all_monitors "$wallpaper"
apply_theme "$wallpaper"
