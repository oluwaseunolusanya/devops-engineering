#!/bin/bash

# Variable with a file path
FILE_PATH="/usr/local/share/xml"

slice=${FILE_PATH:0:5}

echo "Original path: $FILE_PATH and first 5 character is $slice."
echo "${FILE_PATH/share/bin}"

# Default value: If USER_NAME is missing,
# Syntax: ${Variable :- Default}
CURRENT_USER=${USER_NAME:-guest}

echo "Current User: $CURRENT_USER"
