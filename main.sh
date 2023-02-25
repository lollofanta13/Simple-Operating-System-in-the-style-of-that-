#!/bin/bash

# Define the test functions
function test_command {
    if command -v $1 &> /dev/null
    then
        echo "$1 command found"
    else
        echo "$1 command not found"
    fi
}

function test_file {
    if [ -f $1 ]
    then
        echo "$1 found"
    else
        echo "$1 not found"
    fi
}

# Run the tests
echo "BLOXYCRAFT"
echo "Starting self-test..."
sleep 2s
echo "Testing system commands..."
test_command git
test_command python
test_command node
test_command javac
test_command gcc
sleep 1s
echo "system commands OK"
echo "Testing required files..."
test_file main.sh
test_file calculator.sh
test_file notepad.sh
test_file calendar.sh
test_file todo.sh
echo "Files OK"
sleep 2s
echo "Self-test complete."
echo "Starting Simple Operating System."
clear

# End of self test

echo "Simple Operating System. Build 1. Alpha release. Type programs for a list of programs, help for a list of things you can do."
# Define the prompt and read user input
while true; do
    read -p "C:/ " input

    # Check if the user typed "exit" and exit if so
    if [[ "$input" == "exit" ]]; then
        echo "Goodbye! Thank you for using Simple Operating System!"
         rm note.txt  # remove the file before exiting
         rm todo.txt  # remove the file before exiting
         sleep 2s
         clear
        exit
    fi

    # Check if the user typed "calculator" and run the calculator program if so
    if [[ "$input" == "calculator" ]]; then
        echo "Starting calculator..."
        clear
        ./calculator.sh
        continue
    fi

        if [[ "$input" == "terminal" ]]; then
        echo "Starting terminal..."
        clear
        ./terminal.sh
        continue
    fi
            if [[ "$input" == "notepad" ]]; then
        echo "Starting notepad..."
        clear
        ./notepad.sh
        continue
    fi

    # Check if the user typed "chatbot" and run the chatbot program if so
    if [[ "$input" == "chatbot" ]]; then
        echo "Starting chatbot..."
        clear
        ./chatbot.sh
        continue
    fi


    # Check if the user typed "programs" and list all the programs available in the current directory if so
    if [[ "$input" == "programs" ]]; then
        echo "Available programs: "
        ls *.md *.sh
        continue
    fi
    

        if [[ "$input" == "to do list" ]]; then
        echo "Starting to do list..."
        clear
        ./todo.sh
        continue
    fi
            if [[ "$input" == "help" ]]; then
            clear
            echo "Here is the list of all avaible programs: 
            calculator -- you know what it is 
            chatbot -- a simple chatbot 
            programs -- list of all the programs 
            to do list -- the name speaks for itself 
            exit -- please use this before closing the repl.
            notepad -- a simple notepad! Please type exit before closing the repl or the file is stored forever!
            "
            fi



    # If the user typed an unknown command, display an error message
    echo "Unknown command: $input"

    
done
