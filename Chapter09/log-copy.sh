#!/bin/bash

# Create the directory in which we'll store the file.
if [[ ! -d dpkg ]]; then
    mkdir dpkg || { echo "Cannot create the directory, stopping script." ; exit 1; }
fi

# Copy the log file to our new directory.
cp /var/log/dpkg.log dpkg || { echo "Cannot copy dpkg.log th the new directory"; exit 1; }
