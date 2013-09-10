#!/bin/bash

#updating system packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git-core -y
sudo apt-get install vim -y

#cloning vim configs/git configs/bashrc configs and gitsubmodule
git clone https://github.com/artmees/dotvim.git ~/.vim
ln -s ~/.vim/dotfiles/vimrc ~/.vimrc
ln -s ~/.vim/dotfiles/gitconfig ~/.gitconfig
rm ~/.bashrc
ln -s ~/.vim/dotfiles/vagrant_bashrc ~/.bashrc 
mkdir /vagrant/www
source ~/.bashrc
cd ~/.vim/
git submodule init
git submodule update
cd ~
git clone https://github.com/artmees/gitsubmodule.git
cd gitsubmodule
sudo ./install
cd ~
sudo rm -r gitsubmodule

#add other setting ups here as we go
