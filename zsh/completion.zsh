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


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/acarriger/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/acarriger/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/acarriger/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/acarriger/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
