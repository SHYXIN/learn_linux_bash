#!/bin/bash

read -p "Do you like this question? " reply_variable

# See if the user responded positively.
if [[ ${reply_variable,,} = 'y' || ${reply_variable} = 'yes' ]]; then
    echo "Greate, I worked really hard on it!"
    exit 0
fi

# Maybe the user responded negatively?
if [[ ${reply_variable^^} = 'N' || ${reply_variable^^} = 'NO' ]]; then
    echo "You did not? But I worked so hard on it!"
    exit 0
fi


# If we get here, the user did not give a proper response.
echo "Please use yes/no"
exit 1
