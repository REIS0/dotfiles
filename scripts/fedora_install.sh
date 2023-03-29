#!/bin/bash

# Fedora latest release

# install fish, vim, fzf
sudo dnf install -y util-linux-user fish vim fzf tealdeer ripgrep exa bat fd-find trash-cli zoxide
chsh -s $(which fish)

# install fish pluginsapt installapt install
fish -c "fundle install"

# create local fish file
touch $HOME/.config/fish/local.fish

# create template files for gnome
touch $HOME/Templates/New Document.txt
touch $HOME/Templates/New Document.md
