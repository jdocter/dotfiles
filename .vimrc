# references: victory
set nocompatible

" PER-DIRECTORY .vimrc
" set exrc
" set secure

" But no per-file modelines.
set modelines=0


" AVOID DATA LOSS

" Keep undo information in *.un~ files
set undofile

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "1000:  will save up to 1000 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"1000,:20,%,n~/.viminfo

" TEXT
set encoding=utf-8


" SPACING

set autoindent

set tabstop=4       " Display TAB as having width 8.
set shiftwidth=2    " Indent width.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces

" HIGHLIGHTING

if exists('+colorcolumn')
" highlight 80th column
    set colorcolumn=80
else
    " highlight columns after 80
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" highlight trailing whitespace
" match ErrorMsg '\s\+$'

" turn on syntax highlighting
syntax on
colorscheme elflord

" DISPLAY & INFORMATION

" Disable beeping, instead flash screen if possible
set visualbell

" Always show status bar
set laststatus=2

" leave last command visible
set showcmd

" Keep context lines visible around cursor
" set scrolloff=3

" show line numbers
set number

" turn on line and column number in status bar
set ruler

" Show as much as possible of line that wraps past end of window
set display+=lastline

" Show potentially unwanted whitespace and line wraps
" set list listchars=tab:▸\ ,trail:·,nbsp:·,precedes:←,extends:→

" NAVIGATION

" SEARCHING

set incsearch
set hlsearch
nnoremap <C-n> :noh<cr>

set ignorecase
set smartcase

set gdefault

set tags=./tags;

noremap jj <Esc>

set timeoutlen=200
