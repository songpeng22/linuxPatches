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
" gutentags: find symbol
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
" gutentags: find definition
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
" gutentags: find functions called by this function
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
" gutentags: find caller
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
" gutentags: find text
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
" gutentags: find egrep pattern 
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
" gutentags: find this file 
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" gutentags: find files including this file 
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" gutentags: find places where this symbol is assigned a value 
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
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
