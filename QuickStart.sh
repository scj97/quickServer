#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

rm ~/.bashrc
mv bashrc ~/.bashrc
source ~/.bashrc

sudo apt install git neovim -y

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
mkdir ~/.config
mkdir ~/.config/nvim
mv init.vim ~/.config/nvim/init.vim

sudo apt install docker.io docker-compose -y
