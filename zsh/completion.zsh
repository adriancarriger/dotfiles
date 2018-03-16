# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
completion='$(brew --prefix)/share/zsh-completions'

if test -f $completion
then
  source $completion
fi

