" vim
set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
call plug#end()
" vim-plug colorscheme
" colorscheme molokai
colorscheme bluez

" vim-plug gutentags
" gutentags: enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" gutentags: config project root markers.
let g:gutentags_project_root = ['.root']
" gutentags: generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" end of vim-plug

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
