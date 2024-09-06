#!/bin/bash

# v1.1.0
# # Create a list of log files.
# for file in $(ls /var/log/*.log); do
#     echo ${file}
# done

# v1.2.0
# # Create a list of log files
# for file in $(ls /var/log/*.log); do
#     echo "File: ${file}"
#     grep -i 'error' ${file}
# done


# v1.3.0
# # Create a directory to store log files with errors.
# ERROR_DIRECTORY='/tmp/error_logfiles2/'
# mkdir -p ${ERROR_DIRECTORY}

# # Create a list of log files.
for file in $(ls /var/log/*.log); do
    grep --quiet -i 'error' ${file}

    # Check the return code for grep; if it is 0, file contains errors.
    if [[ $? -eq 0 ]]; then
        echo "${file} contains error(s), copying it to archive ${ERROR_DIRECTORY}."
        cp ${file} ${ERROR_DIRECTORY}  # Archive the file to another directory.

        # Create the new file location variable with the directory and basename of the file
        file_new_location="${ERROR_DIRECTORY}$(basename ${file})"
        # In-place edit, only print lines matching 'error' or 'Error'.
        sed --quiet --in-place '/[Ee]rror/p' ${file_new_location}
    fi
done

