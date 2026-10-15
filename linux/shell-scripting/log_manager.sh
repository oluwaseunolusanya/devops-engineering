#!/bin/bash

# Script backups specific log file using a new naming convention and record
# completed backups in persistent report.

REPORT_FILE="report.txt"
TEMP_FILE="log_manager.tmp"

# Clean function to remove temporary files
cleanup(){
   echo "Cleaning up..."
   rm -f $TEMP_FILE
}

# Call cleanup from trap command if script is terminated abruptly
# or exited.
trap cleanup SIGINT EXIT

# Archive a log file
archive_log(){
    local file_path=$1
    local new_name=${file_path/.log/.backup}
    if $file_path; then
        cp $file_path $new_name
        echo "Backed up: $file_path" >> $REPORT_FILE
    fi
}
