"let g:dracula_italic = 0

call plug#begin('~/.vim/plugged')

Plug 'cohama/lexima.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'

call plug#end()

runtime! user/*.vim

set autoindent
set smartindent
set shiftwidth=2
set expandtab
set termguicolors
set mouse=a
colorscheme dracula
