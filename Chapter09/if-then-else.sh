#!/bin/bash

FILE=/tmp/random_file.txt

# Check if the file exists.
if [[ ! -f ${FILE} ]]; then
    echo "File does not exists, stopping the script!"
    exit 1
else
    cat ${FILE} # Print the file content
fi
