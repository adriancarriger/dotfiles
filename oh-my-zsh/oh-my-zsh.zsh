# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.zsh-custom"
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=2
POWERLEVEL9K_MODE='nerdfont-complete'
DEFAULT_USER=acarriger
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time time)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source "$ZSH/oh-my-zsh.sh"

# Export oh-my-zsh dependent paths
export PATH="$PATH:`yarn global bin`"
