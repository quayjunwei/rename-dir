#!/bin/bash

# Specify the folder where you want to perform the renaming
target_dir="C:/path/to/your/directory"

# Check if the folder exists
if [ -d "$target_dir" ]; then
  # Iterate over all files and folders in the target folder
  for item in "$target_dir"/*; do
    if [ -e "$item" ]; then
      # Get the current filename or foldername
      current_name=$(basename "$item")
      
      # Convert spaces to underscores and make it lowercase
      new_name=$(echo "$current_name" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')
      
      # Check if the new name is different from the current name
      if [ "$current_name" != "$new_name" ]; then
        # Rename the file or folder
        mv "$item" "$target_dir/$new_name"
      fi
    fi
  done
else
  echo "Folder not found: $target_dir"
fi
