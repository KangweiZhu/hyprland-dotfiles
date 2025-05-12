#!/bin/bash

# Set the save directory
SAVE_DIR="$HOME/Pictures/Screenshots"
[ -d "$SAVE_DIR" ] || mkdir "$SAVE_DIR"

# Use slurp to select a region
REGION=$(slurp -d)
[ -z "$REGION" ] && echo "Screenshot canceled" && exit 1

# Generate a filename based on current time
FILENAME="$(date +'%H:%M@%m-%d').png"
FILEPATH="$SAVE_DIR/$FILENAME"

# Capture the screenshot, copy to clipboard and save to file
grim -g "$REGION" - | tee "$FILEPATH" | wl-copy

# Optional desktop notification
notify-send "Screenshot Saved" "Saved as $FILENAME and copied to clipboard"
