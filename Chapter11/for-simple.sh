#!/bin/bash


# Create a 'list'
words="house dog telephone dog"

# Iterate over the list and process the values.
for word in ${words}; do
    echo "The word is: ${word}"
done
