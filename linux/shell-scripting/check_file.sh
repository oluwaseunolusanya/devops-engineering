#!/bin/bash

FILE="data.txt"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist. Creating it"
    touch $FILE
fi
