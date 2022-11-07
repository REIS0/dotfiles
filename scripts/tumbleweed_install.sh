#!/bin/bash

# OpenSUSE Tumbleweed
#! NOT TESTED YET

# install fish, vim, fzf
sudo zypper install -y fish vim fzf tealdeer ripgrep exa bat fd
chsh -s $(which fish)

# install fish pluginsapt installapt install
fish -c "fundle install"

# create local fish file
touch $HOME/.config/fish/local.fish
