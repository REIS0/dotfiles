#!/bin/bash

# Fedora latest release

# install fish, vim, fzf
sudo dnf install -y util-linux-user fish vim fzf tealdeer ripgrep exa bat fd-find
chsh -s $(which fish)

# install fish pluginsapt installapt install
fish -c "fundle install"

# create local fish file
touch $HOME/.config/fish/local.fish
