#!/usr/bin/env bash

cd "$(dirname "$0")/.."
DOTFILES_DIR=$(pwd -P)

ALIAS_DIR="$DOTFILES_DIR/script/alias.sh"

echo "Append aliases into config file:"
if [[ -f "$ALIAS_DIR" ]]; then
    if [[ -f "$HOME/.bashrc" ]]; then
        echo "source $ALIAS_DIR" >> "$HOME/.bashrc"
        echo "✅ Aliases were appended into .bashrc"
    fi
    if [[ -f "$HOME/.zshrc" ]]; then
        echo "source $ALIAS_DIR" >> "$HOME/.zshrc"
        echo "✅ Aliases were appended into .zshrc"
    fi
else
    echo "❌ Main alias file was not found!"
fi

