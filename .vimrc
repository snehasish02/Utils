" .vimrc file by Snehasish Sen

set nocompatible " Use Vim settings, rather then Vi settings
filetype off                  " required

" ================= Plugin ====================== 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " https://github.com/VundleVim/Vundle.vim
Plugin 'surround.vim'
Plugin 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
Plugin 'itchyny/lightline.vim' " https://github.com/itchyny/lightline.vim
Plugin 'sickill/vim-monokai' " sublime like colorscheme
Plugin 'airblade/vim-gitgutter' " show changes for git tracked files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ================ General Config ====================
set wildmenu " visual autocomplete for command menu
let g:netrw_browse_split = 4 " opens files fron netrw in a new window
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=1000 " Set bigger history of executed commands
set mouse=a " Enable mouse for scrolling and resizing
set autoread "Reload files changed outside vim
set foldenable          " enable folding

" ================= Display ====================
colorscheme monokai " Sublime Text like colorcheme
highlight ColorColumn ctermbg=gray 
set colorcolumn=80 " Show ruler at 80 char
syntax on " enable syntax-based coloring in different files, based on the extension
set cursorline " highlight current line

" ================ Status Bar ===================
set laststatus=2 " Always display the status bar
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:lightline.component = {
      \ 'percent': '%3p%% (%l:%L)'} 
let g:lightline.active = {
		    \ 'left': [ [ 'mode', 'paste' ],
		    \           [ 'readonly', 'absolutepath', 'modified' ] ]}

" ================ Indentation ======================
set autoindent " New lines inherit the indentation of previous lines
set tabstop=4 " use 4 characters for tab
set expandtab " replace tab character (\t literal) with 4 spaces
set softtabstop=4 " number of spaces in tab when editing

" ================ Search =====================
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...

" ================= Undo related settings ======================
set undodir=~/.vim/undodir " set undo dir. Undo history of all files will be stored here
set undofile   " Maintain undo history between sessions

" ================= Number Line related config =======================
set ruler " show line-numbers in the LHS
set number relativenumber " set number line and also enable relative numbering
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
