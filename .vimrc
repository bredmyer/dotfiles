" load plugins correctly
filetype off

" start pathogen plugin manager
execute pathogen#infect()

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_swift_checkers=['swift', 'swiftlint']
let g:syntastic_swift_swiftlint_use_defaults=1

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>	" toggle with Ctrl+n

" open NERDTree automatically on start up (vim)
autocmd VimEnter * NERDTree

" open NERDTree automatically on start up with no file specified 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree automatically and switch to editor window on a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && !isdirectory(argv()[0]) | exe 'NERDTree' argv()[0] | wincmd w | endif

"open NERDTree automatically on start up in a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" turn on syntax highlighting
syntax on

" load plugins correctly
filetype plugin indent on

let mapleader=","		" set a leader key
set tabstop=4			" number of visual spaces per tab 
set softtabstop=4		" number of spaces in tab when editing
set expandtab			" tabs are spaces
set colorcolumn=110 		" highlight column 110 for line length warning
set encoding=utf-8		" set UTF-8 encoding

" change highlight color
highlight ColorColumn ctermbg=0 guibg=lightgrey

set number			" show line numbers
set showcmd			" show command in bottom bar
set cursorline			" highlight current line
set wildmenu			" visual autocomplete for command menu
set lazyredraw			" redraw only when we need to
set showmatch			" highlight matching [{()}]
set wildmenu

set incsearch			" search as characters are entered
set hlsearch			" highlight matches
set ignorecase			" case-insensitive search
set smartcase
set showmatch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable 			" enable folding
set foldlevelstart=10		" open most folds by default
set foldnestmax=10		" 10 nested fold max

" space opens/closes folds
nnoremap <space> za

set foldmethod=indent		" fold based on indent level
