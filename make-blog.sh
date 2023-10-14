#!/bin/bash
read -p "Url name of blog: " urlname


if [[ -z "$urlname" ]]; then
    echo "Error: URL name cannot be empty."
    exit 1
fi
#make sure /blog exists

SRC_DIR="/var/www/html/blog/template"
DEST_DIR="/var/www/html/blog/$urlname"

if [[ -d "$DEST_DIR" ]]; then
    echo "Error: Directory $DEST_DIR already exists."
    exit 1
fi

if [[ -d "$DEST_DIR" ]]; then
    echo "Error: Directory $DEST_DIR already exists."
    exit 1
fi



cp -r "$SRC_DIR" "$DEST_DIR"

if [[ $? -ne 0 ]]; then
    echo "Error: Failed to copy template to $DEST_DIR."
    exit 1
fi

vim "$DEST_DIR/index.html"
