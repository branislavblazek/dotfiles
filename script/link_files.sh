#!/bin/bash

# check if exists target bin dir
if [ ! -d "$TARGET_BIN_DIR" ]; then
	mkdir -p "$TARGET_BIN_DIR"
fi

for file in "$BIN_DIR"/*; do
	filename=$(basename "$file")

	echo "creating sym link for: $filename"
	ln -sf "$file" "$TARGET_BIN_DIR/$filename"
done
