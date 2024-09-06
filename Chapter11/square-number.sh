#!/bin/bash

INPUT_NUMBER=$1

# Check the number of arguments received.
if [[ $# -ne 1 ]]; then
    echo "Incorrect usage, wrong number of arguments."
    exit 1
fi

# Check to see if the input is a number.
if [[ ! ${INPUT_NUMBER} =~ ^[[:digit:]]+$ ]]; then
    echo "Incorrect usage, wrong type of arguments."
    echo "Usage: $0 <number>"
    exit 1
fi

# Multiple the input number with itself and return this to the user.
echo $((${INPUT_NUMBER} * ${INPUT_NUMBER}))
