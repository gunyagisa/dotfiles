set fenc=utf-8
filetype on
syntax on

set number

set tabstop=4
set shiftwidth=4

"Dein
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  
  "set toml file directory
  let s:toml_dir = expand('~/.config/vim')
  let s:toml     = s:toml_dir . '/dein.toml'
  let s:toml_lazy= s:toml_dir . '/dein_lazy.toml'
  
  "dein.toml
  call dein#load_toml(s:toml, {'lazy': 0})

  "dein_lazy.toml
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif

"Colorscheme
colorscheme onedark

"Airline setting
set ttimeoutlen=50
