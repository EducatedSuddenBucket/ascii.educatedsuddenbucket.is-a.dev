#!/bin/bash

# Base URL where the frames are stored
BASE_URL="https://raw.githubusercontent.com/EducatedSuddenBucket/educatedsuddenbucket.github.io/main/rocket_frames"

# Temporary directory to store the downloaded frames
TMP_DIR=$(mktemp -d)

# Function to clean up the temporary directory on exit
cleanup() {
    rm -rf "$TMP_DIR"
}
trap cleanup EXIT

# Infinite loop to keep displaying the frames
while true; do
    for i in {0..9}; do
        FRAME_URL="${BASE_URL}/${i}.txt"
        FRAME_FILE="${TMP_DIR}/${i}.txt"

        # Fetch the frame from the URL
        curl -s "$FRAME_URL" -o "$FRAME_FILE"

        # Check if the file was successfully downloaded
        if [[ -f "$FRAME_FILE" ]]; then
            clear  # Clear the screen
            cat "$FRAME_FILE"  # Display the content of the current frame
        else
            echo "Failed to download frame ${i}.txt"
        fi

        sleep 0.01  # Pause for 0.1 seconds before the next frame
    done
done

