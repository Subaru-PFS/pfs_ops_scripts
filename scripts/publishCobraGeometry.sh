#!/bin/bash

# Check if a file argument is provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

# Get the file argument
file="$1"

# Check if the file exists
if [ ! -e "$file" ]; then
  echo "Error: File '$file' does not exist."
  exit 1
fi

PFS_INSTDATA_DIR="/software/devel/chyan/pfs_instdata/data/pfi/modules/ALL/"

# Check if the destination directory exists
if [ ! -d "$PFS_INSTDATA_DIR" ]; then
  echo "Error: Directory '$PFS_INSTDATA_DIR' does not exist."
  exit 1
fi

# Step 1: Copy the file to the destination directory
echo "cp '$file' '$PFS_INSTDATA_DIR/data/pfi/modules/ALL/'"

# Step 2: Go to the directory
echo "cd '$PFS_INSTDATA_DIR/data/pfi/modules/ALL/'"

# Step 3: Git add the copied file
echo "git add $file"

# Step 4: Create a symbolic link
echo "ln -s $file ALL.xml"

# Step 5: Commit changes with a meaningful comment
echo "git commit -m 'Publishing new geometry file'"