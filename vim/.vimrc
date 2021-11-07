set nocompatible
set laststatus=2
set lazyredraw
set nocompatible
set path+=**
set title
set ttyfast
set wildmenu
syntax on
filetype plugin on

"" General
set number relativenumber  " Show line numbers
set linebreak   " Break lines at word (requires Wrap lines)
set scrolloff=3
set sidescrolloff=3
set showbreak=+++   " Wrap-broken line prefix
set textwidth=100   " Line wrap (number of cols)
set showmatch   " Highlight matching brace
set visualbell  " Use visual bell (no beeping)

set hlsearch    " Highlight all search results
set smartcase   " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch   " Searches for strings incrementally
map <leader><space> :let @/=''<cr>

set autoindent  " Auto-indent new lines
set expandtab   " Use spaces instead of tabs
set shiftwidth=4    " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab

"" Advanced
set ruler   " Show row and column ruler information

set autochdir   " Change working directory to open buffer
set autowriteall    " Auto-write all file changes

set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

set wrap
nnoremap j gj
nnoremap k gk
set listchars=tab:▸\ ,eol:¬

set t_Co=256
set background=dark
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set complete-=i

set noswapfile
set hidden

