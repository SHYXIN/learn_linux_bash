#!/bin/bash

file_name=$1

# Check if the file exists.
if [[ -f ${file_name} ]]; then
    cat ${file_name} # Print the file content.
else
    echo "File does not exists, stopping the script!
    exit 1
fi
