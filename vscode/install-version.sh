#!/bin/bash

vscode_user=${CODE_VERSION_PATH:-~/Library/Application\ Support/Code/User}
# Backup current state
[ ! -d $DOTFILES/vscode/.backups ] && mkdir -p $DOTFILES/vscode/.backups/snippets
cp ~/Library/Application\ Support/Code/User/settings.json ~/.dotfiles/vscode/.backups/
cp ~/Library/Application\ Support/Code/User/keybindings.json ~/.dotfiles/vscode/.backups/
cp -r ~/Library/Application\ Support/Code/User/snippets/ ~/.dotfiles/vscode/.backups/snippets

# Link config
ln -sf ~/.dotfiles/vscode/settings.json $vscode_user/settings.json
ln -sf ~/.dotfiles/vscode/keybindings.json $vscode_user/keybindings.json
[ ! -L "$vscode_user/snippets" ] && ln -sf ~/.dotfiles/vscode/snippets/ $vscode_user/snippets

