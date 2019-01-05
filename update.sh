#!/usr/bin/env bash

# Updates dotfiles with lastest local changes

# fail early and loudly
set -ex

# run from here
cd "$(dirname "$0")"

# Update extensions
./vscode/update-extensions.sh

# Update Brew
rm Brewfile
brew bundle dump
