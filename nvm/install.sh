#!/bin/sh
#
# nvm
#

# Check for nvm
if [ ! -f $NVM_DIR/nvm.sh ];
then
  echo "  Installing nvm for you."
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
  NVM_DIR="$HOME/.nvm" && . "$NVM_DIR/nvm.sh"
  nvm install --lts
  npm install -g yarn
fi

# Install dotfile node dependencies
yarn

# Install global node modules
yarn run global.install
