" Fuck vi
set nocompatible

let g:pathogen_disabled = ['AutoClose', 'autoclose']
call pathogen#infect()

" Make me beautiful
set t_Co=256
set background=dark
let g:solarized_contrast="medium"
colorscheme solarized


au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

"let g:syntastic_check_on_open=1
let g:syntastic_quiet_warnings=0

" auto cd to the current dir as the file
"set autochdir

let g:clipbrdDefaultReg = '+'

set spell
set spelllang=en

set cursorcolumn
set cursorline
"line numbers
set nu

" Get propper tabs and syntax highlighting
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" Reuse open tabs when switching buffers
set switchbuf=usetab,newtab

set cindent
set copyindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=80

" toggle paste mode (to paste properly indented text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set showcmd   " Show (partial) command in status line.
set showmatch   " Show matching brackets.
set ignorecase    " Do case insensitive matching
set smartcase   " Do smart case matching

" Fuck swap files
set noswapfile
set nobackup
set nowb

" Press jj fast to get back to normal mode from typing
inoremap jj <ESC>

" press ; to issue commands in normal mode (no more shift holding)
nnoremap ; :

"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <f12> :!ctags -R --c-kinds=+degmnstvf --c++-kinds=+cdefgmnstuv --java-kinds=+cefgimp<cr>
nnoremap <f8> :!make<cr>
nnoremap <f7> :!pdflatex "%"<cr>
