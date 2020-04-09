#!bin/sh

# install zsh
# my main use is ubuntu based, just change for your distro
sudo apt install zsh -y
chsh -s $(which zsh)

# install vim
sudo apt install vim -y

# install rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# install antibody
curl -sfL git.io/antibody | sh -s - -b /usr/local/bin

# install starship
curl -fsSL https://starship.rs/install.sh | zsh

echo "Restart terminal and it's done."
