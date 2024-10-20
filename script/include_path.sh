#!/bin/bash

# link aliases
echo "Append PATH update in config file:"
if [[ -n "$CONFIG_FILE" ]]; then
    echo "export PATH=\"$TARGET_BIN_DIR:\$PATH\"" >> "$CONFIG_FILE"
    echo "	✅ PATH was updated in $(basename "$CONFIG_FILE")"
else
    echo "	❌ Neither .bashrc nor .zshrc was found!"
fi
