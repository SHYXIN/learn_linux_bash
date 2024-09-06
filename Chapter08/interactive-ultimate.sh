#!/bin/bash

# Grab argument.
character_name=$1
location=$2
food=$3


# Prompt the ser for information, if it was not passed as argument.
if test -z ${character_name}; then read -p "Name a fictional character: " character_name; fi
if test -z ${location}; then read -p "Name an actual localtion: " location; fi
if test -z ${food}; then read -p "What's your favorite food?" food; fi


# Compose the story
echo "Recently, ${character_name} was seen in ${location} eating ${food}!"
