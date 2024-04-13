#!/bin/bash

# Pop_OS! 

# install fish, vim, fzf
sudo apt install fish vim fzf bat ripgrep exa trash-cli tldr fd-find -y
chsh -s $(which fish)

# install fish plugins 
fish -c "fundle install"

# update tldr database
tldr -u

# create local fish file
touch $HOME/.config/fish/local.fish
