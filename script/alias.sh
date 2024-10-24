#!/bin/bash

# save current location
pushd . &> /dev/null

cd "$(dirname "$0")/.."
DOTFILES_DIR=$(pwd -P)

# Find all files which ext is alias
for alias_file in "$DOTFILES_DIR"/*.alias; do
	if [[ -f "$alias_file" ]]; then
		source "$alias_file"
	fi
done

# restore location
popd &> /dev/null

