#!/bin/bash


echo "Please enter first number:"
read num1

echo "Please enter second number:"
read num2

echo "Please choose an operation (+, -, *, /):"
read operator

case $operator in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    *)
        echo "Invalid operator"
        clear
        exit 1
        ;;
esac

echo "Result: $result"
