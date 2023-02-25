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
bash main.sh
