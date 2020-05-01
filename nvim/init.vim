set number

set smartindent
set expandtab
set shiftwidth=2
set termguicolors

set ignorecase
set smartcase
set wrapscan


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

if dein#check_install()
    call dein#install()
endif

" deoplete
if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
endif

let g:gruvbox_italic=1
colorscheme gruvbox
filetype plugin indent on
syntax enable

highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE


let mapleader = "\<space>"
nmap <Leader>w [window]
nnoremap [window]h <C-w>h
nnoremap [window]j <C-w>j
nnoremap [window]k <C-w>k
nnoremap [window]l <C-w>l
