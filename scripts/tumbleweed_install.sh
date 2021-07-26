#!/bin/bash

# OpenSUSE Tumbleweed
#! NOT TESTED YET

# install fish, vim, fzf
sudo zypper install fish vim fzf tealdeer ripgrep exa bat alacritty alacritty-fish-completion -y
chsh -s $(which fish)

# install fish pluginsapt installapt install
fish -c "fundle install"

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

echo "Restart terminal and it's done."
echo "For Rust you need to logout and login again."
