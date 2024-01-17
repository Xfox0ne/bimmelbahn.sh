#!/bin/bash

# Path to the "Hallo Bimmelbahn" audio file
MUSIC_FILE="/path/to/Hallo_Bimmelbahn.mp3"

# Check if the music file exists
if [ ! -f "$MUSIC_FILE" ]; then
    echo "Music file not found: $MUSIC_FILE"
    exit 1
fi

# Play the music in the background in a loop
mpg123 -q --loop -1 "$MUSIC_FILE" &

# Infinite loop for the 'sl' command
while true; do
    sl
done
