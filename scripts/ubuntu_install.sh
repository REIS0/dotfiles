#!/bin/bash

# Ubuntu LTS

# install fish, vim, fzf, etc
sudo apt install fish vim fzf trash-cli curl gcc bat ripgrep tldr exa -y
chsh -s $(which fish)

# install fish plugins 
fish -c "fundle install"

# update tldr database
tldr -u
