#!/bin/bash

# Grab the first argument
file_name=$1

# If the file exists, overwrite it with the always empty file
# /dev/null; otherwise, touch it.
if [[ -f ${file_name} ]]; then
    cp /dev/null ${file_name}
else
    touch ${file_name}
fi


# Check if either the cp or touch worked correctly.
if [[ $? -ne 0 ]]; then
    echo "Something went wrong, please check ${file_name}"
    exit 1
else
    echo "Success, file ${file_name} is now empty."
fi
