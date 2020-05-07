#!/bin/bash
mkdir -p ~/.config/nvim/dein

ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

ln -sf ~/dotfiles/nvim/dein/dein.toml ~/.config/nvim/dein/dein.toml
ln -sf ~/dotfiles/nvim/dein/dein_lazy.toml ~/.config/nvim/dein/dein_lazy.toml
