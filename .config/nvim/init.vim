" remap ESC
inoremap jk <ESC>

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Setup vim-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Native nvim LSP
Plug 'neovim/nvim-lspconfig'
" Git support
Plug 'tpope/vim-fugitive'
" Initialize plugin system
call plug#end()
