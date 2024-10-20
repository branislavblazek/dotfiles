#!/bin/bash

cd "$(dirname "$0")/.."
export DOTFILES_DIR=$(pwd -P)

# where aliases are located
export ALIAS_DIR="$DOTFILES_DIR/script/alias.sh"

# which file to update
export CONFIG_FILE=""
if [[ -f "$HOME/.bashrc" ]]; then
	CONFIG_FILE="$HOME/.bashrc"
elif [[ -f "$HOME/.zshrc" ]]; then
        CONFIG_FILE="$HOME/.zshrc"
fi

# where bin files are located
export BIN_DIR="$DOTFILES_DIR/bin"

# where to link bin files
export TARGET_BIN_DIR="$HOME/bin"
