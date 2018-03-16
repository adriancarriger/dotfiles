# Uses git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).

d_completion='$(brew --prefix)/share/zsh/site-functions/_docker'
dc_completion='$(brew --prefix)/share/zsh/site-functions/_docker-compose'

[ -f $d_completion ] && source $d_completion
[ -f $dc_completion ] && source $dc_completion
