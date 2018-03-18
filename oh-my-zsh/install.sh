ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh-custom"

if [ ! -d $ZSH ]; then
  # https://github.com/robbyrussell/oh-my-zsh/blob/master/tools/install.sh#L64-L67
  env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
    printf "Error: git clone of oh-my-zsh repo failed\n"
    exit 1
  }
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
  git clone https://github.com/bhilburn/powerlevel9k.git ~/$ZSH_CUSTOM/themes/powerlevel9k
fi
