#Installation :

    git clone https://github.com/artmees/dotvim.git ~/.vim

#Create symlinks :
    
    ln -s ~/.vim/dotfiles/vimrc ~/.vimrc
    ln -s ~/.vim/dotfiles/gitconfig ~/.gitconfig

##Add the appropriate .bash on the machine :

    MAC OS X :

        ln -s ~/.vim/dotfiles/MacOSX/bash_profile ~/.bash_profile
        ln -s ~/.vim/dotfiles/MacOSX/screenrc ~/.screenrc
        ln -s ~/.vim/dotfiles/MacOSX/inputrc ~/.inputrc

    Vagrant :
        run the `configure_vagrant.sh` script

#Initalizing Submodules Plugins :

    cd ~/.vim/
    git submodule init
    git submodule update
