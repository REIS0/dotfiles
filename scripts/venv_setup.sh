#!/bin/bash
# ___  ___  ___ ______ _____  ________   __
# |  \/  | / _ \|  _  \  ___| | ___ \ \ / /
# | .  . |/ /_\ \ | | | |__   | |_/ /\ V /
# | |\/| ||  _  | | | |  __|  | ___ \ \ /
# | |  | || | | | |/ /| |___  | |_/ / | |
# \_|  |_/\_| |_/___/ \____/  \____/  \_/
# ______ _____ _____ _____  _____
# | ___ \  ___|_   _/  ___||  _  |
# | |_/ / |__   | | \ `--. | |/' |
# |    /|  __|  | |  `--. \|  /| |
# | |\ \| |___ _| |_/\__/ /\ |_/ /
# \_| \_\____/ \___/\____/  \___/

# Simple script for using virtualenv 
# It installs virtualenv and creates a new
# python 3 environment 

# APENAS RODAR, SO PRECISA TER O PIP FUNCIONANDO

# checa se o comando pra o virtualenv existe
if command -v virtualenv; then
	continue
else
	# instala o virtualenv e adiciona ao path (NAO FUNCIONA COM FISH)
	pip install virtualenv 
	# if test -e $HOME/.zshrc; then
	# 	echo export PATH=\"$HOME/.local/bin:$PATH\" >> $HOME/.zshrc
	#	source $HOME/.zshrc
	# elif test -e $HOME/.bashrc; then
	#	echo export PATH=\"$HOME/.local/bin:$PATH\" >> $HOME/.bashrc
	#	source $HOME/.bashrc
	# else
	#	echo "ERROR: nao pode colocar o path no arquivo"
	# fi
fi

virtualenv -p python3 venv
# se o python padrao for o 3 ja rodar o de baixo
# virtualenv -p python venv

. venv/bin/activate

pip install -r req.txt
