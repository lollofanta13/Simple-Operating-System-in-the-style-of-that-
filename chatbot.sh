#!/bin/bash

# Define the chatbot's greeting message
echo "Hi, I'm a simple chatbot. How can I help you today? Pro Tip: Type help for a list of commands. Type bye to exit."

# Loop to continue the conversation
while true; do
    # Read user input
    read input

    # Check if the user said "bye" and exit the loop if so
    if [[ "$input" == "bye" ]]; then
        echo "Goodbye!"
        clear
        break
    fi

    # Respond to the user's input
    case "$input" in
        "who are you")
            echo "I'm a simple chatbot."
            ;;
        "what is your name")
            echo "My name is ChatBot."
            ;;
        "what is the time")
            echo "The time is $(date +%H:%M)."
            ;;
            "what is the date?")
            echo "The time is $(date)."
            ;;
                        "help")
            echo "Commands: what is your name, who are you, what is the time, what is the date."
            ;;
        *)
            echo "I'm sorry, I didn't understand. Can you please repeat?"
            ;;
    esac
done
