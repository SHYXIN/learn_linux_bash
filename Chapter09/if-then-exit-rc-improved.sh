#!/bin/bash

# Create a new top-level directory.
mkdir /temporary_dir

# Test if the directory.
if [[ $? -ne 0 ]]; then
  echo "mkdir did not successfully complete, stop script execution!"
  exit 1
fi

# Create a new file in our temporary directory.
touch /temporary_dir/tempfile.txt
