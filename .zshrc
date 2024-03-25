# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

# Which plugins would you like to load?
plugins=(asdf tmux gh gem ruby rails starship eza)

zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' yes
zstyle ':omz:plugins:eza' 'header' yes

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:$PATH"

# For EZA ls command
export FPATH="/usr/local/share/zsh/site-functions:$FPATH"
alias ls="eza --icons  --group-directories-first"
alias ll="ls --git -lh"
alias la="ls --git -la"
alias lld="ll -D"
alias lad="la -D"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Always use nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

# Alias for LazyGit
alias lg="lazygit"

# Here is a trick to keep config files in Git.
# Initialise an empty git repository: git init --bare $HOME/.myconf
# Now set it to ignore untracked files: git config status.showUntrackedFiles no
# Configure a Github repo as the origin: git remote add origin git@github.com:askegg/dotfiles.git
# With the "config" alias below we can now add files to the git repository:
# config add .zshrc
# config commit -m "Added .zshrc"
# config push
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# I'm using starship to customise the prompt
# See https://starship.rs
eval "$(starship init zsh)"
