#/bin/bash

# Infinite loop, only exits on correct anwser.
while true; do
    read -p "I have keys but no locks. I have a space but no room. You can enter, but can't got outside. What am I? " answer
    if [[ ${answer} =~ [Kk]eyboard ]]; then # Use regular expression so 'a keyboard' or 'Keyborad' is also a valid answer.
        echo "Correct, congratulations!"
        break # Exit the while loop.
    else
        # Print an error message and go back into the loop
        echo "Incorrect, please try again."
    fi
done

# This will run after the break in the while loop.
echo "Now we can continue after the while loop is done, awesome!"
