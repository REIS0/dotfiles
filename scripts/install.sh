#!bin/sh

# install zsh and vim
# my main use is ubuntu based, just change for your distro
#sudo apt install zsh vim -y
#chsh -s $(which zsh)

# install fish, vim, fzf
sudo apt install fish vim fzf trash-cli alacritty -y
chsh -s $(which fish)

# install nvm (i hate this)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# init fish
fish
fundle install

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env


# install antibody
#curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

# install starship
#curl -fsSL https://starship.rs/install.sh | zsh

# install ls-deluxe
cargo install lsd

echo "Restart terminal and it's done."
echo "For Rust you need to logout and login again."
