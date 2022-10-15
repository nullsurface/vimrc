syntax on
filetype plugin indent on
set hidden
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set nohlsearch
set expandtab
set smartindent
set exrc
set relativenumber
set guicursor=
set termguicolors
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set noshowmode
set completeopt=menuone,noinsert,noselect

au BufNewFile,BufRead *.qml set filetype=qml

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme gruvbox
