#!/bin/bash

# Prompt the user for the directory to search in
read -p "Enter the directory to search in (default is current directory): " search_dir
search_dir=${search_dir:-.}  # Use current directory if user doesn't specify one

# Prompt the user for the minimum file size (in megabytes)
read -p "Enter the minimum file size (in megabytes, e.g., 10M): " min_size

# Use find and du to locate and list large files
find "$search_dir" -type f -size +$min_size -exec du -h {} \; 2>/dev/null | sort -rh | head -n 10

# Note: The "-type f" flag specifies that we are looking for files (not directories).
# The "-size +$min_size" flag specifies that we want files larger than the given size.
# The "du -h" command calculates the disk usage of each file in human-readable format.
# The "2>/dev/null" part suppresses error messages for directories that can't be read.
# Finally, we sort the results in reverse order and display the top 10 largest files.
