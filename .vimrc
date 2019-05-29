filetype plugin indent on

syntax enable
syntax on
set background=dark
set nobackup
set noswapfile

set mouse=a " Enable use of mouse in all modes
set number " Display line numbers on the left
set encoding=utf-8
set tabstop=4     " a tab is four spaces
set autoindent    " always set autoindenting on
set ignorecase    " ignore case when searching
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells

let g:ackprg = 'ag --vimgrep'

