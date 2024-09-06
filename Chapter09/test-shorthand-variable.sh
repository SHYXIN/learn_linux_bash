#!/bin/bash


DIRECTORY=/tmp/

# Test if the /tmp/ directory exists using the full command:
test -d ${DIRECTORY}
test_rc=$?

# Test if the /tmp/ directory exists using the simple command:
[ -d ${DIRECTORY} ]
simple_rc=$?

# Test if the /tmp/ directory exists using the extended shorthand:
[[ -d ${DIRECTORY} ]]
extended_rc=$?


# Print the results
echo "The return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}."
