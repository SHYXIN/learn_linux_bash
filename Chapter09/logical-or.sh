#!/bin/bash


# This command will surely fail because we don't have the permissions needed:
cat /etc/shadow || exit 123
