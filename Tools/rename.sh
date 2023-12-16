#!/bin/bash

# Loop through all files
for file in *.md; do
    new_name=${file:0:6}.md

    # Check if the target file exists before renaming
    if [[ -f "$new_name" ]]; then
        echo "'$new_name' exists! Skipping."
    else
        mv "$file" "$new_name"
        echo "Renamed '$file' to '$new_name'"
    fi
done
        