# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Name of the theme to load.
ZSH_THEME="ys"

# Disable bi-weekly auto-update checks for oh-my-zsh.
DISABLE_AUTO_UPDATE="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Date format to use in the output of 'history' command.
HIST_STAMPS="yyyy-mm-dd"

# Folder containing custom zsh configurations.
ZSH_CUSTOM=$HOME/.dotfiles/zsh

# List of oh-my-zsh plugins to load.
plugins=(git history-substring-search git-flow-completion)

# mkdir a directory and cd into it.
function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

# Load Google-specific zsh configurations.
if [ -f $HOME/.at_google.zsh ]; then
  source $HOME/.at_google.zsh
fi

# Misc configuration.
export EDITOR='vim'
export VISUAL='vim'

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Load aliases.
source $HOME/.dotfiles/aliases.sh

# Load custom scripts
export PATH=$HOME/.dotfiles/scripts:$PATH

# Load machine-specific settings
if [ -f $HOME/.$HOST"_config.sh" ]; then
  source $HOME/.$HOST"_config.sh"
fi
