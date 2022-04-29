syntax on
filetype plugin indent on
let mapleader = " "

set cursorline
set lazyredraw
set path+=**
set title
set number relativenumber
set linebreak
set scrolloff=3
set sidescrolloff=3
set showbreak=+++
set textwidth=79
set showmatch
set smartcase
set ignorecase
set expandtab
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4
set autochdir
set autowriteall
set undolevels=1000
set wrap
set noswapfile
set colorcolumn=80
set clipboard=unnamedplus
set wildmode=longest,list
set mouse=a

call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-commentary'
    Plug 'preservim/nerdtree'
    Plug 'tanvirtin/monokai.nvim'
call plug#end()

colorscheme monokai
let g:airline_theme='molokai'

nnoremap j gj
nnoremap k gk

map <leader><space> :let @/=''<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup NTG
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

