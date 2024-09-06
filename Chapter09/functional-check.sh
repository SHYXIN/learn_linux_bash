#!/bin/bash


# Create a directory
mkdir /tmp/temp_dir
mkdir_rc=$?


# Use test to chekc if the directory was created.
test -d /tmp/temp_dir
test_rc=$?


# Check out the return codes:
echo "mkdir resulted in ${mkdir_rc}, tes resulted in ${test_rc}."
