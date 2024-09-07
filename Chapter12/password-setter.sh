#!/bin/bash

NEW_USER_NAME=bob

# Verify this script is run with root privileges
if [[ $(id -u) -ne 0 ]]; then
    echo "Please run as root or with sudo!"
    exit 1
fi

# We only need exit status, send all output to /dev/null
id ${NEW_USER_NAME} &> /dev/null

# Check if we need to create the user.
if [[ $? -ne 0 ]]; then
    # User does not exist, create the user.
    useradd -m ${NEW_USER_NAME}
fi

# Set the password for the user.
echo "${NEW_USER_NAME}:password" | chpasswd
