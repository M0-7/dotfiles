set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set relativenumber
set mouse=a
syntax on
set wildmode=longest,list
set clipboard+=unnamedplus
" colorscheme slate

" Plugins
call plug#begin()
Plug 'ellisonleao/gruvbox.nvim'
Plug 'xiyaowong/transparent.nvim'
call plug#end()
colorscheme gruvbox
set termguicolors
