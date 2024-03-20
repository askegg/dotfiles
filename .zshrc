# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load?
plugins=(asdf tmux gh gem ruby rails)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:$PATH"

# For EZA ls command
export FPATH="/usr/local/share/zsh/site-functions:$FPATH"
alias ls="eza --icons"
alias ll="eza --icons -lh"
alias la="eza --icons -la"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases
alias vim="nvim"
alias v="nvim"

# Here is a trick to keep config files in Git.
# Initialise an empty git repository: git init --bare $HOME/.myconf
# Now set it to ignore untracked files: config config status.showUntrackedFiles no
# With the "config" alias below we can now add files to the git repository:
# config add .zshrc
# config commit -m "Add .zshrc"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# I'm using starship to customise the prompt
eval "$(starship init zsh)"

