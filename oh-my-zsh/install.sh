# https://github.com/robbyrussell/oh-my-zsh/blob/master/tools/install.sh#L34-L36
if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ ! -d $ZSH ]; then
  # https://github.com/robbyrussell/oh-my-zsh/blob/master/tools/install.sh#L64-L67
  env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
    printf "Error: git clone of oh-my-zsh repo failed\n"
    exit 1
  }
fi
