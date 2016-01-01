call plug#begin('~/.vim/plugged/')

Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" UI
set number
set ruler
set showcmd
set cursorline
set lazyredraw
set showmatch
set laststatus=2

" Color
syntax enable
colorscheme gotham256

" Tabbing and spacing
filetype indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=2
set backspace=indent,eol,start

" Movement
nnoremap j gj
nnoremap k gk

" Searching
set wildmenu
set incsearch
set hlsearch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Encoding
set encoding=utf-8 " The encoding that's displayed
set fileencoding=utf-8 " The encoding that's written to file

" Keymaps
let mapleader=","
nnoremap <F1> :bnext<CR>
nnoremap <F2> :bprev<CR>
nnoremap <F3> :ls<CR>
nnoremap <leader>vo :vsp $MYVIMRC<CR>
nnoremap <leader>vs :source $MYVIMRC<CR>

" Things below are mostly from http://dougblack.io/words/a-good-vimrc.html

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" space open/closes folds
nnoremap <space> za

" move to beginning/end of line
nnoremap B ^
nnoremap E $
"
" " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]
