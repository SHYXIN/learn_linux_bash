#!/bin/bash

# Since we're dealing with paths, set current working directory.
cd $(dirname $0)

# Input validation
if [[ $# -ne 1 ]]; then
    echo "Incorrect usage!"
    echo "Usage: $0 <file or directory path>"
    exit 1
fi

input_path=$1

if [[ -f ${input_path} ]]; then
    echo "File found, showing content:"
    cat ${input_path} || { echo "Cannot print file, exiting script!"; exit 1; }
elif [[ -d ${input_path} ]]; then
    echo "Directory found, listing:"
    ls -l ${input_path} || { echo "Cannot list directory, exiting script!"; exit 1; }
else
    echo "Path is neither a file or directory, exiting script."
    exit 1
fi
