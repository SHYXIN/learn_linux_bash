#!/bin/bash


read -p "Do you like this question? "  replay_variable

# See i the user responded positively.
if [[ ${replay_variable} = 'y' || ${replay_variable} = 'Y' || ${replay_variable} = 'yes' || ${replay_variable} = 'YES' || ${replay_variable} = 'Yes' ]]; then
    echo "Great, I Worked really hard on it!"
    exit 0
fi


# Maybe the user responded negatively?
if [[ ${replay_variable} = 'n' || ${replay_variable} = 'N' || ${replay_variable} = 'no' || ${replay_variable} = 'NO' || ${replay_variable} = 'No' ]]; then
    echo "You did not? But I Worked so hard on it!"
    exit 0
fi

# If we get here, the user did not give a proper response.
echo "Please use yes/no!"
exit 1
