# This script installs my most commonly used applications.
# Useful for setting up a new machine.

# System
## Please install ASDF and Ruby first.

## Install Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Git
 system "brew install git"

## For easy upgrade of applications in casks
## To use type "brew cu"
system "brew tap buo/cask-upgrade"

## PostgreSQL
system "brew install postgresql@16"

## Jetbrains Mono Font
system "brew tap homebrew/cask-fonts"
# system "brew install --cask font-jetbrains-mono"
system "brew install --cask font-jetbrains-mono-nerd-font"

## TailwindCSS
system "brew install tailwindcss"

# Applications

## Wezterm
system "brew reinstall --cask wezterm --force"

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
system "brew install neovim"

## LazyGit
system "brew install lazygit"

## The Unarchiver
system "brew reinstall --cask the-unarchiver --force"

## Zed Editor
system "brew reinstall --cask zed --force"

## Github Desktop & Command Line
system "brew reinstall --cask github --force"
system "brew reinstall gh --force"

## TablePlus
system "brew reinstall --cask tableplus --force"

## BalaEtcher
system "brew reinstall --cask balenaetcher --force"

## Cleanshot
system "brew reinstall --cask cleanshot --force"

## App Cleaner
system "brew reinstall --cask appcleaner --force"

# Configuration
# TODO: Download configuration to correct destination.
# system "gh repo clone askegg/dotfiles"
