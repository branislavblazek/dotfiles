#!/bin/bash

cd "$(dirname "$0")/.."
DOTFILES_DIR=$(pwd -P)

ALIAS_DIR="$DOTFILES_DIR/script/alias.sh"

echo "Remove aliases from config file:"
if [[ -f "$ALIAS_DIR" ]]; then
    if [[ -f "$HOME/.bashrc" ]]; then
	sed -i "" "#source $ALIAS_DIR#d" "$HOME/.bashrc"        
        echo "✅ Aliases were removed from .bashrc"
    fi
    if [[ -f "$HOME/.zshrc" ]]; then
	sed -i "" "#source $ALIAS_DIR#d" "$HOME/.zshrc"
        echo "✅ Aliases were removed from .zshrc"
    fi
else
    echo "❌ Main alias file was not found!"
fi
