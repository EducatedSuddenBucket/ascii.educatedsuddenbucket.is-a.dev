#!/bin/bash
# Array to store the ASCII art frames
frames=(
"  .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     ."
"         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     ."
"  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     ."
"         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     ."
"  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     ."
"         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     ."
"  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     ."
"         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     ."
"  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     ."
"         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     .
  .     .     .     .     .     .
         .     .     .     .     ."
)
# Infinite loop to keep displaying the frames
while true; do
    for frame in "${frames[@]}"; do
        clear  # Clear the screen
        printf "%s\n" "$frame"  # Display the current frame with newlines preserved
        sleep 0.1  # Pause for 0.1 seconds before the next frame
    done
done
