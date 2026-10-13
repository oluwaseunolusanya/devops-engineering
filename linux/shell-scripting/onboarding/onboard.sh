#!/bin/bash

user=$1

# Ensure script is run with username
if [ $# -eq 1 ];then
    # Run script
    if id $user  &> /dev/null;then
        echo "User $user already exists."
    else
        echo "User to be created:  $user does not exist, proceeding..."
    fi
else
    echo "Usage: ./onboard.sh <username>"
    exit 1
fi
