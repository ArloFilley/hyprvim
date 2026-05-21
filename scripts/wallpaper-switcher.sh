#!/bin/bash
SOCK=/tmp/mpvpaper.sock
WallpaperFolder=$HOME/Pictures/wallpapers

# Build newline-separated list with thumbnail annotations for rofi
RofiInput=""
for file in "$WallpaperFolder"/*; do
    filename=$(basename "$file")
    RofiInput+="${filename}\0icon\x1fthumbnail://${file}\n"
done

# Show rofi picker
RofiSelection="$(printf "%b" "$RofiInput" | rofi -dmenu -p "wallpaper" -show-icons -theme-str 'element-icon { size: 3em; }')"

# Exit if nothing selected
[[ -z "$RofiSelection" ]] && exit 0

# Load the selected wallpaper
echo "loadfile \"${WallpaperFolder}/${RofiSelection}\"" | socat - "$SOCK"
