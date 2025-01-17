#!/bin/bash

# Change directory to the script location.
cd $(dirname $0)

# Create the directory in which we'll store the file.
if [[ ! -d dpkg ]]; then
    mkdir dpkg || { echo "Cannot create the directory, stopping script."; exit 1;}
fi

# Copy the log file to our new directory.
cp /var/log/dpkg.log dpkg || { echo "Cannot copy dpkg.log to the new directory."; exit 1; }
