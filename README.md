#Installation :

```sh
git clone git@github.com:artmees/dotvim.git ~/.vim
```

#Create symlinks :

```sh
ln -s ~/.vim/.vimrc ~/.vimrc
```

#Initalizing Submodules Plugins :
```sh
cd ~/.vim/
git submodule update --init --recursive

cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

#Dotfiles :
other `.dotfiles` setup have been moved to [dotfiles](https://gitlab.com/artmees/dotfiles)
