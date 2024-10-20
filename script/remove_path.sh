#!/bin/bash

echo "Remove PATH update from config file:"
if [[ -n "$CONFIG_FILE" ]]; then
	sed -i '' "\|export PATH=\"$TARGET_BIN_DIR:\$PATH\".*|d" ~/.zshrc
        echo "	✅ PATH update was removed from $(basename "$CONFIG_FILE")"
else
       	echo "	❌ Neither .bashrc nor .zshrc was found!"
fi
