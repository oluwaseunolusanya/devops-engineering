#!/bin/bash

if [ "$UID" -eq 0 ]; then
   echo "You're running this script as root."
else
   echo "You're running this script as a regular user."
fi
