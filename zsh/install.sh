# Check for Homebrew
if test ! $(which zsh)
then
  brew install zsh
  sudo bash -c "echo $(which zsh) >> /etc/shells"
fi

exit 0