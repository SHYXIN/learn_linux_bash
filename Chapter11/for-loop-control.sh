#!/bin/bash


# Generate a random number from 1-10.
random_number=$(( ( RANDOM % 10) + 1 ))

# Iterate over all posiible random numbers.
for number in {1..10}; do

    if [[ ${number} -eq ${random_number} ]]; then
        echo "Random number found: ${number}."
        break # As soon as we have found the number, stop.
    fi

    # If we get here the number did not match.
    echo "Number does not match. ${number}"
done

echo "Number has been found, all done."
