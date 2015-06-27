#Installation :

```sh
git clone git@github.com:artmees/dotvim.git ~/.vim
```

#Create symlinks :

```sh
ln -s ~/.vim/.vimrc ~/.vimrc
```

#Initalizing Plugins :
```sh
# Vim
:PluginInstall
```

#Updating Submodules Plugins :
```
# Vim
:PluginUpdate
```

be sure to re-install YouCompleteMe after updating (specially Python) using
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

#Dotfiles :
other `.dotfiles` setup have been moved to [dotfiles](https://gitlab.com/artmees/dotfiles)
