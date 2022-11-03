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
set bg=dark

au BufNewFile,BufRead *.qml set filetype=qml

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"\
inoremap <silent><expr> <cr> coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"

colorscheme gruvbox
