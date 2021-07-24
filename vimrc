syntax on
filetype indent plugin on
set number
set background=dark
set tabstop=2
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'

Plug 'bling/vim-airline'

Plug 'w0rp/ale'

call plug#end()
