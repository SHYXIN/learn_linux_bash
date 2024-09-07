#!/bin/bash

# Check for the correct number of arguments
if [[ $# -ne 1 ]]; then
    echo "Wrong number of arguments!"
    echo "Usage: $0 <length>"
    exit 1
fi


# Verify the length argument.
if [[ ! $1 =~ ^[[:digit:]+$ ]]]; then
    echo "Please enter a length (number)."
    exit 1
fi

password_lenght=$1

# tr grabs readable characters from input, delete the rest.
# Input for tr comes from /dev/urandom, via input redirection.
# echo makes sure a newline is printed.
tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c ${password_lenght}
