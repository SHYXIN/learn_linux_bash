#!/bin/bash

password=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c20)

echo "Your random password is: ${password}"
