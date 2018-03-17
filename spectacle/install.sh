#!/bin/sh
#
# Spectacle

if [ ! -L ~/Library/Application\ Support/Spectacle/shortcuts.json ]; then
  ln -sf $DOTFILES/spectacle/shortcuts.json ~/Library/Application\ Support/Spectacle/shortcuts.json
fi
