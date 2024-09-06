#!/bin/bash

FILE_NAME=/tmp/grep-then-else.txt

# Touch the file; creates it if does not exists.
touch ${FILE_NAME}

# Check the file for the keyword.
grep --quiet 'keyword' ${FILE_NAME}
grep_rc=$?

# If the file contains the keyword, remove the file. Otherwise, write the keyword to the file.
if [[ ${grep_rc} -eq 0 ]]; then
    rm ${FILE_NAME}
else
    echo 'keyword' >> ${FILE_NAME}
fi
