" Useful settings
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set mouse=a
set wildmode=longest,list
set clipboard+=unnamedplus

" Plugins
call plug#begin()
Plug 'ellisonleao/gruvbox.nvim'
Plug 'xiyaowong/transparent.nvim'
call plug#end()

" Theme
syntax on
colorscheme gruvbox
set termguicolors
