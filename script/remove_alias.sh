#!/bin/bash

echo "Remove aliases from config file:"
if [[ -f "$ALIAS_DIR" ]]; then
	if [[ -n "$CONFIG_FILE" ]]; then
        	sed -i '' "\|source $ALIAS_DIR|d" "$CONFIG_FILE"
        	echo "✅ Aliases were removed from $(basename "$CONFIG_FILE")"
    	else
        	echo "❌ Neither .bashrc nor .zshrc was found!"
    	fi
else
    echo "❌ Main alias file was not found!"
fi
