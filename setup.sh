#!/bin/bash

DOT_FILES=(.zshrc .vimrc)
for file in ${DOT_FILES[@]}
do
    ln -sf $HOME/dotfiles/$file $HOME/$file
done

#dein install
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
cd $HOME/.config
mkdir vim
ln -s $HOME/dotfiles/dein.toml $HOME/.config/vim/dein.toml
ln -s $HOME/dotfiles/dein_lazy.toml $HOME/.config/vim/dein_lazy.toml
