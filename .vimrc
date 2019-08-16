" load plugins correctly
filetype off

" pathogen set up
execute pathogen#infect()

" configure NERDTree
" open with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" open NERDTree automatically on start up
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadpre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !isdirectory(argv()[0]) | exe 'NERDTree' argv()[0] | wincmd w | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" turn on syntax highlighting
syntax on

" load plugins correctly
filetype plugin indent on

" set a leader key
let mapleader=","

" show line numbers
set number

" encoding
set encoding=utf-8

" whitespace
set textwidth=110
set tabstop=4
set softtabstop=4
set expandtab

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
