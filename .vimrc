filetype plugin indent on

syntax enable
syntax on
set background=dark

set mouse=a " Enable use of mouse in all modes
set number " Display line numbers on the left
set encoding=utf-8

let g:ackprg = 'ag --vimgrep'

execute pathogen#infect()
