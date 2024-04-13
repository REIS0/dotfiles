#!/bin/bash

# Fedora latest release

# install fish, vim, fzf
sudo dnf install -y  fish vim fzf tealdeer ripgrep exa bat fd-find trash-cli zoxide
sudo chsh -s $(which fish)

# install fish pluginsapt installapt install
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
fish -c "fundle install"

# create local fish file
touch $HOME/.config/fish/local.fish

# create template files for gnome
touch $HOME/Templates/New Document.txt
touch $HOME/Templates/New Document.md
