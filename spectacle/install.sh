#!/bin/sh
#
# Spectacle

# Check if link is needed
[ ! -d ~/Library/Application\ Support/Spectacle/shortcuts.json ] && exit 0
[ -L ~/Library/Application\ Support/Spectacle/shortcuts.json ] && exit 0

# Link config
ln -sf $DOTFILES/spectacle/shortcuts.json ~/Library/Application\ Support/Spectacle/shortcuts.json
