#!/bin/bash
COPY_FILE=~/.config/.copy
# Read the contents of COPY_FILE, and create a new cp command with the file contents as arguments, with the current directory as the destination

if [ ! -f $COPY_FILE ]; then
    echo "Nothing to paste! (no file $COPY_FILE)"
fi

if [ $# -eq 0 ]; then
    cp -r $(cat $COPY_FILE) .
else
    # If the first argument is a directory or file, copy the file to that file or directory, creating parents if they don't exist
    if [ -d $1 ] || [ -f $1 ]; then
        cp -r $(cat $COPY_FILE) $1
    else
        echo "$1 doesn't exist, creating."
        mkdir -p $1
        cp -r $(cat $COPY_FILE) $1
    fi
fi

