#!/bin/bash

# Create the lol.sh file
output_file="output.sh"
cat > "$output_file" << EOF
#!/bin/bash
# Array to store the ASCII art frames
frames=(
EOF

# Append ASCII art frames from files to lol.sh
for i in {0..9}; do
    frame=$(cat "$i.txt")
    printf '"%s"\n' "$frame" >> "$output_file"
done

# Append the animation loop to lol.sh
cat >> "$output_file" << EOF
)
# Infinite loop to keep displaying the frames
while true; do
    for frame in "\${frames[@]}"; do
        clear  # Clear the screen
        printf "%s\n" "\$frame"  # Display the current frame with newlines preserved
        sleep 0.1  # Pause for 0.1 seconds before the next frame
    done
done
EOF

# Make the lol.sh file executable
chmod +x "$output_file"

echo "The output file has been created and is now executable."
