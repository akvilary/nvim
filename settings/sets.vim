" ALL VIM OPTIONS (SETS) ARE HERE

set nocompatible
syntax enable
filetype on

colorscheme tokyonight-storm
set cursorline

set updatetime=50

set scrolloff=7
set splitbelow
set fileencoding=utf-8
set nobackup
set backupcopy=yes  " It allows to rewrite existent file and do not create new one with same name
set noswapfile
set undofile
set history=1000
set mouse=a
set clipboard=unnamedplus

" completion
set wildmenu
set completeopt=menu,menuone,noselect

set path+=**

" ignores for completion
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set shiftwidth=0 " if shiftwidt==0 then it takes value from tabstop
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent

autocmd FileType python setlocal tabstop=4 softtabstop=4 colorcolumn=100
autocmd FileType go setlocal tabstop=4 softtabstop=0 noexpandtab

set ruler
set number
set nowrap
set noshowmode
set signcolumn=yes
set ignorecase
set smartcase
set incsearch
set nohlsearch
set showcmd
set lbr
set splitright "for vnew command

" language helpers
set keymap=russian-jcukenwin
set iminsert=0
