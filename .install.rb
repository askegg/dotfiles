# This script installs my most commonly used applications.
# Useful for setting up a new machine.

# System
## Please install ASDF and Ruby first.

## Git
system "brew install git"

## PostgreSQL
system "brew install postgresql@16"

## Jetbrains Mono Font
system "brew tap homebrew/cask-fonts"
# system "brew install --cask font-jetbrains-mono"
system "brew install --cask font-jetbrains-mono-nerd-font"

# Applications

## Wezterm
system "brew install --cask wezterm"

## Termius
# system "brew install --cask termius"

## Eza
system "brew install eza"

## Tmux
system "brew install tmux"

## Starship
system "brew install starship"

## NeoVIM
# See https://www.lazyvim.org/installation

## LazyGit
system "brew install lazygit"

## Zed Editor
system "brew install --cask zed"

## Github Desktop & Command Line
system "brew install --cask github"
system "brew install gh"

## TablePlus
system "brew install --cask tableplus"

## BalaEtcher
system "brew install --cask balenaetcher"

## App Cleaner
system "brew install --cask appcleaner"

# Configuration
# TODO: Download configuration to correct destination.
# system "gh repo clone askegg/dotfiles"
