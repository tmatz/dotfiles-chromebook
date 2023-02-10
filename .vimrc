call plug#begin('~/.vim/plugged')

Plug 'cohama/lexima.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'ziglang/zig.vim'

call plug#end()

runtime! user/*.vim

set autoindent
set smartindent
set shiftwidth=2
set expandtab
set termguicolors
set mouse=a
colorscheme one
set background=dark
let g:one_allow_italics=1
let g:airline_theme="one"
set splitright
