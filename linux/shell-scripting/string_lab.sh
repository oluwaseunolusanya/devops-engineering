#!/bin/bash

# Variable with a file path
FILE_PATH="/usr/local/share/xml"

slice=${FILE_PATH:0:5}

echo "Original path: $FILE_PATH and first 5 character is $slice."
echo "${FILE_PATH/share/bin}"
