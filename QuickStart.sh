#!/bin/bash

sudo apt update 
sleep 2
sudo apt upgrade -y

#.bashrc
rm ~/.bashrc
mv .bashrc ~/.bashrc
source ~/.bashrc

sleep 2

sudo apt install git neovim docker.io docker-compose -y

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# init.vim
mkdir ~/.config
mkdir ~/.config/nvim
mv init.vim ~/.config/nvim/init.vim

# docker-compose file
mkdir ~/lab
mv docker-compose.yaml ~/lab/docker-compose.yaml

# clean up
cd ~
rm -rf quickServer
