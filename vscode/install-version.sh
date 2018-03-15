#!/bin/bash

CODE_VERSION=${CODE_VERSION:-code}
[[ $CODE_VERSION == 'code' ]] && CODE_DIR=Code || CODE_DIR=Code\ -\ Insiders
VSCODE_USER_PATH=~/Library/Application\ Support/$CODE_DIR/User

if [ ! -L ~/Library/Application\ Support/$CODE_DIR/User/settings.json ]; then
  # Backup current state
  [ ! -d $DOTFILES/vscode/.backups/$CODE_VERSION ] && mkdir -p $DOTFILES/vscode/.backups/$CODE_VERSION/snippets
  cp ~/Library/Application\ Support/$CODE_DIR/User/settings.json ~/.dotfiles/vscode/.backups/$CODE_VERSION/
  cp ~/Library/Application\ Support/$CODE_DIR/User/keybindings.json ~/.dotfiles/vscode/.backups/$CODE_VERSION/
  cp -r ~/Library/Application\ Support/$CODE_DIR/User/snippets/ ~/.dotfiles/vscode/.backups/$CODE_VERSION/

  # Link config
  ln -sf ~/.dotfiles/vscode/settings.json $VSCODE_USER_PATH/settings.json
  ln -sf ~/.dotfiles/vscode/keybindings.json $VSCODE_USER_PATH/keybindings.json
  [ ! -L "$VSCODE_USER_PATH/snippets" ] && ln -sf ~/.dotfiles/vscode/snippets/ $VSCODE_USER_PATH/snippets
fi
