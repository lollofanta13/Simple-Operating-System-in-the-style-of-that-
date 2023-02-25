#!/bin/bash

# Define the prompt and read user input
while true; do
    read -p "Enter a to-do item or type 'done' to quit: " input

    # Check if the user typed "done" and exit if so
    if [[ "$input" == "done" ]]; then
        echo "Goodbye!"
        clear
        exit
    fi

    # Add the to-do item to the file
    echo "$input" >> todo.txt

    # Display the current to-do list
    echo "To-do list:"
    cat todo.txt
done
