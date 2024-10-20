#!/bin/bash

# link aliases
echo "Append aliases into config file:"
if [[ -f "$ALIAS_DIR" ]]; then
    if [[ -n "$CONFIG_FILE" ]]; then
	echo "source $ALIAS_DIR" >> "$CONFIG_FILE"
	echo "✅ Aliases were appended into $(basename "$CONFIG_FILE")"
    else
       	echo "❌ Neither .bashrc nor .zshrc was found!"
    fi
else
    echo "❌ Main alias file was not found!"
fi
