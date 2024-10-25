#!/bin/bash

if [[ -n "$CONFIG_FILE" ]]; then
	PATH_EXPORT="export PATH=\"$TARGET_BIN_DIR:\$PATH\""
	if ! grep -q "$PATH_EXPORT" "$CONFIG_FILE"; then
		echo "$PATH_EXPORT" >> "$CONFIG_FILE"
	fi
else
	echo "Error: No config file found!"
fi
