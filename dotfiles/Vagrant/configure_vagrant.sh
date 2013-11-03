#!/bin/bash

#########################
#updating system packages
#########################
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git-core -y
sudo apt-get install vim -y
sudo apt-get install vim-nox -y
sudo apt-get install vim-rails -y
sudo add-apt-repository ppa:fcwu-tw/ppa -y
sudo apt-get update
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install make -y
sudo apt-get g++ -y

################################################################
#cloning vim configs/git configs/bashrc configs and gitsubmodule
################################################################
git clone https://github.com/artmees/dotvim.git ~/.vim

ln -s ~/.vim/dotfiles/vimrc ~/.vimrc
ln -s ~/.vim/dotfiles/gitconfig ~/.gitconfig

#adding vagrant files links for bash profile and rspec ruby test
rm ~/.bashrc
ln -s ~/.vim/dotfiles/Vagrant/vagrant_bashrc ~/.bashrc 
rm ~/.profile
ln -s ~/.vim/dotfiles/Vagrant/vagrant_profile ~/.profile 
rm ~/.rspec
ln -s ~/.vim/dotfiles/Vagrant/vagrant_rspec ~/.rspec 

source ~/.bashrc
if [ ! -d /vagrant/www/ ];then
   mkdir /vagrant/www
fi

cd ~/.vim/
git submodule init
git submodule update

cd ~
git clone https://github.com/artmees/gitsubmodule.git
cd gitsubmodule
sudo ./install
cd ~
sudo rm -r gitsubmodule

###############
##install mysql
###############
#sudo apt-get install mysql-server -y
#sudo apt-get install php5-mysql -y
#sudo apt-get install libmysqlclient-dev python-dev -y

#############
#install tree
#############
sudo apt-get install tree

###################################
##install python virtualenv and pip
###################################
#mkdir ~/.virtualenv
#sudo apt-get install python-pip -y
#sudo pip install virtualenv

###############
#install nodejs
###############
#sudo apt-get install python-software-properties python g++ make -y
#sudo add-apt-repository ppa:chris-lea/node.js
#sudo apt-get update
#sudo apt-get install nodejs -y

###############################
#install mongodb
###############################
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen -y

#####################
#install redis-server
#####################
echo '# /etc/apt/sources.list.d/dotdeb.org.list' | sudo tee /etc/apt/sources.list.d/redis.list
echo 'deb http://packages.dotdeb.org squeeze all' | sudo tee -a /etc/apt/sources.list.d/redis.list
echo 'deb-src http://packages.dotdeb.org squeeze all' | sudo tee -a /etc/apt/sources.list.d/redis.list
wget -q -O - http://www.dotdeb.org/dotdeb.gpg | sudo apt-key add -
sudo apt-get update
sudo apt-get install redis-server -y

##############
#install rbenv
##############
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone git://github.com/dcarley/rbenv-sudo.git ~/.rbenv/plugins/rbenv-sudo
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone https://github.com/sstephenson/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
source ~/.bashrc

echo -e "\033[5;31m#################################################################\033[0m"
echo -e "\033[5;31m#\033[0;31m\tPlease add or uncomment these lines in your .bashrc\t\033[5;31m#\033[0;31m"
echo -e "\033[5;31m#\033[0;31m\t"'export PATH="$HOME/.rbenv/bin:$PATH"'"\t\t\t\033[5;31m#\033[0;31m"
echo -e "\033[5;31m#\033[0;31m\t"'eval "$(rbenv init -)"'"\t\t\t\t\t\033[5;31m#\033[0;31m"
echo -e "\033[5;31m#################################################################\033[0m"

###################
#AskNative specific
###################
rbenv install 1.9.3-p385
gem install zeus --version '=0.13.4.pre2'
gem install bundler
