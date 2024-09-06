#!/bin/bash

# This loop runs 10 times.
for counter in {1..10}; do
    echo "Hello! This is loop number ${counter}."
    sleep 1
done

# After the for-loop finishes, print a goodbye message.
echo "All done, thanks for tuning in!"
