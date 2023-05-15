#!/bin/bash
COPY_FILE=~/.config/.copy
# When copy is run, populate .copy with whatever directory is passed to copy

# If .copy doesn't exist, create it
# If .copy does exist, delete it and create a new one

# If no argument is passed, print the contents of .copy
if [ ! -f $COPY_FILE ]; then
    echo "Copy file doesn't exist, creating '$COPY_FILE'"
    touch $COPY_FILE
fi

if [ $# -eq 0 ]; then
    echo "Contents of $COPY_FILE:"
    cat $COPY_FILE
else
    copystring=""
    rm $COPY_FILE
    touch $COPY_FILE
    for i in "${@:1}"; do
        # If argument is a directory or file, and it exists, make it absolute.
        if [ -d "$i" ] || [ -f "$i" ]; then
            i=$(realpath "$i")
        fi
        # Add the word to to .copy, no newlines
        copystring+="$i "
    done
    echo $copystring >> $COPY_FILE
    echo "Copied '$copystring' to .copy"
fi
