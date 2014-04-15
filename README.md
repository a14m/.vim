#Installation :

    git clone https://github.com/artmees/dotvim.git ~/.vim

#Create symlinks :

```sh
ln -s ~/.vim/dotfiles/vimrc ~/.vimrc
ln -s ~/.vim/dotfiles/gitconfig ~/.gitconfig
```

##Add the appropriate .bash on the machine :

- **MAC OS X** :
  ```sh
  ln -s ~/.vim/dotfiles/MacOSX/.bash_profile ~/.bash_profile
  ln -s ~/.vim/dotfiles/MacOSX/.screenrc ~/.screenrc
  ln -s ~/.vim/dotfiles/MacOSX/.inputrc ~/.inputrc
  ln -s ~/.vim/dotfiles/MacOSX/.tmux.conf ~/.tmux.conf
  ln -s ~/.vim/dotfiles/MacOSX/.brewfile ~/.brewfile

  # install homebrew
  # then install homebrew formulas using
  brew bundle ~/.brewfile
  ```

- **Vagrant** :

  run the `configure_vagrant.sh` script

#Initalizing Submodules Plugins :
```sh
cd ~/.vim/
git submodule init
git submodule update
```
