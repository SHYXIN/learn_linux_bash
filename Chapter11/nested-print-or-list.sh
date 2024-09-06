#!/bin/bash


# Since we're dealing with paths, set current working directory.
cd $(dirname $0)

# Input validation.
if [[ $# -ne 1]]; then
    echo "Incorrect usage!"
    echo "Usage: $0 <file or directory path>"
    exit 1
fi

input_path=$1

# First, check if we can read the file
if [[ -r ${input_path} ]]; then
    # We can read the file, now we determine what type it is.
    if [[ -f ${input_path} ]]; then
        echo "File found, showing content:"
        cat ${input_path}
    elif [[ -d ${input_path} ]]; then
        echo "Directory found, listing；"
        ls -l ${input_path}
    else
        echo "Path is neither a file nor a directory, exiting script."
        exit 1
    fi
else
    # We cannot read the file, print an error.
    echo "Cannot read the file/directory, exiting script."
    exit 1
fi
