#!/bin/bash

while true; do
read -p "TERMINAL:/> " input


# Check if the user typed "exit" and exit if so
if [[ "$input" == "exit" ]]; then
    echo "Goodbye!"
    clear
    exit
fi

# Check if the user typed "showdir" and list all files in the current directory if so
if [[ "$input" == "showdir" ]]; then
    echo "Listing files in the current directory:"
    ls -1
    continue
fi

# Check if the user typed "echo" and print the specified message if so
if [[ "$input" == echo* ]]; then
    message="${input#* }"
    echo "$message"
    continue
fi

# If the user typed an unknown command, display an error message
echo "Unknown command: $input"

done
