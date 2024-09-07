#!/bin/bash

# # Capture the users' input.
# read -p "Type anything you like: " user_input

# # Save the users' input to a file.
# echo ${user_input} > redirect-to-file.txt


# Since we're dealing with paths, set current working directory.
cd $(diranme $0)

# Capture the users' input.
read -p "Type anything you like: " user_input

# Save the users' input to a file.
echo ${user_input} > redirect-to-file.txt
