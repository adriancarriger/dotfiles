#!/bin/bash

CODE_VERSION=${CODE_VERSION:-code}
[[ $CODE_VERSION == 'code' ]] && CODE_DIR=Code || CODE_DIR=Code\ -\ Insiders
VSCODE_USER_PATH=~/Library/Application\ Support/$CODE_DIR/User

ln -sf ~/.dotfiles/vscode/settings.json "$VSCODE_USER_PATH/settings.json"
ln -sf ~/.dotfiles/vscode/keybindings.json "$VSCODE_USER_PATH/keybindings.json"
ln -sf ~/.dotfiles/vscode/snippets "$VSCODE_USER_PATH/snippets"
