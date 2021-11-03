syntax on
set nocompatible
set encoding=utf-8
set ttyfast
set laststatus=2
set showmode
set showcmd
filetype plugin on

set number relativenumber
set linebreak
set showbreak=+++
set textwidth=79
set showmatch
set belloff=all

set hlsearch
set smartcase
set ignorecase
set incsearch
map <leader><space> :let @/=''<cr>

set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set wrap

set noshiftround
set listchars=tab:▸\ ,eol:¬
set scrolloff=3
set matchpairs+=<:>

nnoremap j gj
nnoremap k gk

set ruler

set undolevels=1000
set backspace=indent,eol,start

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set noswapfile

set t_Co=256
set background=dark


set path+=**
set wildmenu

command! MakeTags !ctags -R .

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


" Snippets:
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


