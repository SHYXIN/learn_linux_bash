#!/bin/bash

# Prompt the user for information
read -p "Name a fictional character: " character_name
read -p "Name an actual location: " location
read -p "What's your favorite food? " food

# Compose the story.
echo "Recently. ${character_name} was seen in ${location} eating ${food}!"
