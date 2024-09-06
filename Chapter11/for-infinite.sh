#!/bin/bash

# Infinite for loop.
# for ((;;)); do
#     echo "Hello!"
#     sleep 1 # Wait for 1 second.
# done


for ((counter=1;;counter++)); do
    echo ${counter}
    sleep 1
done
