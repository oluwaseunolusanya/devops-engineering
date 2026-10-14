#!/bin/bash

# Cleanup function
cleanup(){
   echo ""
   echo "Cleaning up temporary files..."
   rm -f $temp
   echo "Cleanup complete."
}

# Register the trap
# SIGINT - Ctrl+C
# EXIT - Any exit(success or failure)
trap cleanup SIGINT EXIT

# Create a temporary file
temp=temp_data.txt
touch $temp
echo "Temporary file $temp created."

# Fall asleep (Simulate a long job)
echo "Process is running. Press Ctrl+C to stop..."
while true; do
    sleep 1
done
