#!/bin/bash

# Run a command that should always work:
mktemp
mktemp_rc=$?

# Run a command that should always fail:
mkdir /home/
mkdir_rc=$?

echo "mktemp returned ${mktemp_rc}, while mkdir returned ${mkdir_rc}!"
