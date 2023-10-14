#!/bin/bash
read -p "Url name of blog: " urlname

# Check if input is empty
if [[ -z "$urlname" ]]; then
    echo "Error: URL name cannot be empty."
    exit 1
fi

SRC_DIR="/var/www/html/blog/template"
DEST_DIR="/var/www/html/blog/$urlname"

# Check if destination directory already exists
if [[ -d "$DEST_DIR" ]]; then
    echo "Error: Directory $DEST_DIR already exists."
    exit 1
fi

if [[ -d "$DEST_DIR" ]]; then
    echo "Error: Directory $DEST_DIR already exists."
    exit 1
fi


# Copy the directory recursively
cp -r "$SRC_DIR" "$DEST_DIR"

# Check if copy was successful
if [[ $? -ne 0 ]]; then
    echo "Error: Failed to copy template to $DEST_DIR."
    exit 1
fi

# Open index.html with vim
vim "$DEST_DIR/index.html"
