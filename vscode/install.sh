#!/bin/bash

# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"
then
  if test ! $(which code); then
    # VS Code
    brew cask install visual-studio-code
    ./$DOTFILES/vscode/install-version.sh
  fi
  if test ! $(which code-insiders); then
    # VS Code Insiders
    CODE_VERSION_PATH=~/Library/Application\ Support/Code\ -\ Insiders/User ./$DOTFILES/vscode/install-version.sh
  fi
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  echo '  Skipping VS Code install for Linux.'
  exit 0

  # TODO: add working Dockerized VS Code install for Linux
  # echo '  Installing VS Code for you.'

  # Option #1
  # curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  # sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
  # sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
  # sudo apt-get update
  # sudo apt-get install code

  # Option #2
  # sudo apt-get update
  # TODO: Move this into Dockerfile
  # sudo apt-get install -y software-properties-common ubuntu-make
  # sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
  # umake ide visual-studio-code
fi

# Update plugins (even if VS Code is already installed)
if test $(which code); then
  while read p; do
    code --install-extension $p
  done < $DOTFILES/vscode/extensions
fi

if test $(which code-insiders); then
  while read p; do
    code-insiders --install-extension $p
  done < $DOTFILES/vscode/extensions
fi
