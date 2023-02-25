#!/bin/bash

# Define the filename and read any existing content from the file
filename="note.txt"
content=$(cat "$filename" 2>/dev/null)

# Display the existing content of the file (if any)
if [[ -n "$content" ]]; then
    echo "$content"
fi

# Prompt the user for new content to add to the file
echo "Enter new content (type Ctrl-D to save and exit):"
new_content=$(cat)

# Save the new content to the file
echo "$new_content" > "$filename"

echo "Note saved to $filename."

echo "Exiting notepad and returning to main script..."
sleep 3s
clear
