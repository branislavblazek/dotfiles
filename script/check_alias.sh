#!/bin/bash

if [[ -f "$ALIAS_DIR" ]]; then
    if [[ -n "$CONFIG_FILE" ]]; then
	if ! grep -q "source $ALIAS_DIR" "$CONFIG_FILE"; then
		echo "source $ALIAS_DIR" >> "$CONFIG_FILE"
	fi
    else
       	echo "Error: No config file found!"
    fi
else
    echo "Error: $ALIAS_DIR was not found!"
fi
