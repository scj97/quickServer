#!/bin/bash

sudo apt update 
sudo apt upgrade -y

#.bashrc
rm ~/.bashrc
mv .bashrc ~/.bashrc
source ~/.bashrc

sudo apt install git neovim docker.io docker-compose -y

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# init.vim
mkdir ~/.config
mkdir ~/.config/nvim
mv init.vim ~/.config/nvim/init.vim

# docker-compose file
mv docker-compose.yaml ~/docker-compose.yaml

# clean up
cd ~
rm -rf quickServer
