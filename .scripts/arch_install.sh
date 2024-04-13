#!/bin/bash

# * MADE TO USE WITH ARCH LINUX CALAMARES INSTALL
# * NEED GIT

# install paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd

# install packages, set options as you like
sudo pacman -S gnome vim fish fzf bat ripgrep tealdeer exa trash-cli alacritty 

# set fish shell as default
chsh -s $(which fish)
fish -c "fundle install"

# minor configuration
echo "" | sudo tee /etc/motd

echo "Reboot? [y/n]"

read answer

if [ $answer -eq "y"]; then
	reboot
else
	echo "Reboot later for applying changes"
fi
