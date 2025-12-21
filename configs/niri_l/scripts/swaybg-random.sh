#!/usr/bin/env sh

# Wallpaper directory
WP_FOLDER=/home/toniizk/Pictures/Backgrounds

# Find a random image file (supports png/jpg, add more extensions if needed)
FILE=$(find "$WP_FOLDER" -type f \( -name '*.png' -o -name '*.jpg' \) | shuf -n1)

# Kill any existing swaybg process
killall swaybg

# Start a new swaybg instance with the random image
swaybg -i "$FILE" -m fill &

