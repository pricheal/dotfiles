#!/bin/bash

# bootstrap.sh, sets up unix dev environment
# source: https://github.com/pricheal/dotfiles

# ==================================================
# os specific stuff
# ==================================================

if [ "$(uname -s)" == "Darwin" ]; then
    source ~/dotfiles/mac.sh
elif [ "$(uname -s)" == "Linux" ]; then
    source ~/dotfiles/ubuntu.sh
fi

# ==================================================
# installs
# ==================================================

# install docker sync
brew install ruby
gem install docker-sync

# install dev tools
brew install tmux
brew install git
brew install vim
brew install less
brew install httpie
brew install jq

# install cli stuff
brew install neofetch

# ==================================================
# setup
# ==================================================

# download base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# symlink files to home folder
ln -sf ~/dotfiles/.bashrc ~/.bashrc && source ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# generate key bindings for less
lesskey ~/dotfiles/.lesskey

# set shell theme
base16_eighties