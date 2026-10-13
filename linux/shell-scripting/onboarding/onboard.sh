#!/bin/bash

user=$1

# Ensure script is run with username
if [ $# -eq 1 ];then
    # Run core functionality after checking user doesn't exist
    if id $user  &> /dev/null;then
        echo "User $user already exists."
    else
        echo "User to be created:  $user does not exist, proceeding..."
        # Create user with home directory and default shell as /bin/bash
        echo "Creating user $user..."
        sudo useradd $user -ms /bin/bash
        echo "User $user created succesfully."
    fi
else
    echo "Usage: ./onboard.sh <username>"
    exit 1
fi
