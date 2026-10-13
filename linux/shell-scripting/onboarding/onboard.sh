#!/bin/bash

# Ensure script is run with username
if [ $# -eq 1 ];then
    # Run script
    echo "User to be created: $USER"
else
    echo "Usage: ./onboard.sh <username>"
    exit 1
fi
