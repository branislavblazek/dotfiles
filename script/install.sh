#!/bin/bash
#
# > chmod +x install.sh
# > ./install.sh
# Adds aliases into .zsh/.bashrc
# and creates symbolic links to bin.

set -e

BASE_DIR=$(dirname "$0")

# load variables
source "$BASE_DIR/config.sh"

# check alias
bash "$DOTFILES_DIR"/script/check_alias.sh

# link files
bash "$DOTFILES_DIR"/script/link_files.sh

# check path
bash "$DOTFILES_DIR"/script/check_path.sh
