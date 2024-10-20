#!/bin/bash
#
# > chmod +x install.sh
# > ./install.sh
# Adds aliases into .zsh/.bashrc
# and creates symbolic links to bin.

set -e

# load variables
source ./config.sh

# remove old aliases
bash "$DOTFILES_DIR"/script/remove_alias.sh

# install new aliases
bash "$DOTFILES_DIR"/script/install_alias.sh

# check if exists target bin dir
if [ ! -d "$TARGET_BIN_DIR" ]; then
    echo "⚙️  Creating dir: $TARGET_BIN_DIR"
    mkdir -p "$TARGET_BIN_DIR"
fi

# link bin files
for file in "$BIN_DIR"/*; do
	# get full path of file
	filename=$(basename "$file")

#	echo "⚙️  Creating sym link for $filename"
#	ln -sf "$file" "$TARGET_BIN_DIR/$filename"
done

#echo "✅ Install of bin files done."

if [[ ":$PATH:" != *":$TARGET_BIN_DIR:"* ]]; then
#	echo $TARGET_BIN_DIR	
# export PATH="$TARGET_BIN_DIR:$PATH"
#	echo "✅ dir added into PATH"
fi
