" vim
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
call plug#end()
" vim-plug colorscheme
colorscheme molokai

" tab 
" a tab takes 4-spaces-wide
set tabstop=4
" a indent takes 4-spaces-wide
set shiftwidth=4
" a tab consist of 4 spaces
set expandtab
set smarttab
" this is for tab party,disable it
set softtabstop=0
