syntax on
filetype plugin indent on
let mapleader = " "

set cursorline "colorcolumn=80
set lazyredraw
set path+=**
set title
set number relativenumber
set wrap linebreak showbreak=+++
set textwidth=79
set showmatch smartcase ignorecase
set expandtab smartindent shiftwidth=4 softtabstop=4 tabstop=4
set autochdir autowriteall
set undolevels=1000
set clipboard=unnamedplus
set wildmode=longest,list
set mouse=a
set completeopt=noinsert,menuone,noselect

call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'edkolev/tmuxline.vim'
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tanvirtin/monokai.nvim'
call plug#end()

colorscheme monokai
let g:airline_theme='molokai'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_z = "%l:%c"
let g:airline#extensions#tmuxline#enabled = 1

nnoremap j gj
nnoremap k gk

map <leader><space> :let @/=''<CR>

let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
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

