set number
filetype on
syntax on

set smartindent
set expandtab

set ignorecase
set smartcase
set wrapscan

set termguicolors


" Dein
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  
  "set toml file directory
  let s:toml_dir = expand('~/.config/nvim/dein')
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

" deoplete
if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1

imap <C-k>      <Plug>(neosnippet_expand_or_jump)
smap <C-k>      <Plug>(neosnippet_expand_or_jump)
xmap <C-k>      <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                        \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
colorscheme onedark
