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
bash "$DOTFILES_DIR"/script/include_alias.sh

# link files
bash "$DOTFILES_DIR"/script/link_files.sh

# remove PATH update
bash "$DOTFILES_DIR"/script/remove_path.sh

# include PATH update
bash "$DOTFILES_DIR"/script/include_path.sh

echo ""
echo "✅ Install of bin files done."
