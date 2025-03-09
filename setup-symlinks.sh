#!/bin/bash

# Define paths
VSCODE_USER_DIR="$HOME/.config/Code/User"
SETTINGS_DIR="$HOME/.vscode-settings"

# Remove existing snippets directory if it exists
if [ -d "$VSCODE_USER_DIR/snippets" ]; then
  rm -rf "$VSCODE_USER_DIR/snippets"
fi

# Create symlinks
ln -sf "$SETTINGS_DIR/settings.json" "$VSCODE_USER_DIR/settings.json"
ln -sf "$SETTINGS_DIR/keybindings.json" "$VSCODE_USER_DIR/keybindings.json"
ln -sf "$SETTINGS_DIR/snippets" "$VSCODE_USER_DIR/snippets"

echo "Symlinks created successfully!"

