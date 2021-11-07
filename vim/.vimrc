syntax on
filetype plugin on

set nocompatible
set laststatus=2
set lazyredraw
set nocompatible
set path+=**
set title
set ttyfast
set wildmenu
set number relativenumber
set linebreak
set scrolloff=3
set sidescrolloff=3
set showbreak=+++
set textwidth=79
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set autochdir
set autowriteall
set undolevels=1000
set backspace=indent,eol,start
set wrap
set listchars=tab:▸\ ,eol:¬
set complete-=i
set noswapfile
set hidden
set t_Co=256
set background=dark
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

nnoremap j gj
nnoremap k gk

let mapleader = " "
map <leader><space> :let @/=''<cr>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup NTG
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
