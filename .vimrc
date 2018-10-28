" .vimrc file by Snehasish Sen

set nocompatible " Use Vim settings, rather then Vi settings

set number " show the current line-number, current column-number, etc. in the status-line (bottom) of vim

set ruler " show line-numbers in the LHS

syntax on " enable syntax-based coloring in different files, based on the extension

set tabstop=4 " use 4 characters for tab

set expandtab " replace tab character (\t literal) with 4 spaces

set softtabstop=4 " number of spaces in tab when editing

set cursorline " highlight current line

set wildmenu " visual autocomplete for command menu

set hlsearch " highlight matches

let g:netrw_browse_split = 4 " opens files fron netrw in a new window

set backspace=indent,eol,start " allow backspacing over everything in insert mode

set history=1000 " Set bigger history of executed commands

set laststatus=2 " Always display the status bar

set mouse=a " Enable mouse for scrolling and resizing

set autoindent " New lines inherit the indentation of previous lines

set ignorecase " Ignore case when searching

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c) " format the status line

" Undo related settings
set undodir=~/.vim/undodir " set undo dir. Undo history of all files will be stored here
set undofile   " Maintain undo history between sessions


