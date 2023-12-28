#!/bin/bash

# Initialize counter variable
count=0

# Loop through each item in /etc
for item in /etc/*; do
    # Check if the item is a regular file (not a directory or link)
    if [ -f "$item" ]; then
        # Increment the counter
        ((count++))
    fi
done

# Print the result
echo "Number of files in /etc (excluding directories and links): $count"
