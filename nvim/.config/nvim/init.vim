set number relativenumber
set linebreak
set showbreak=+++
set textwidth=79
set showmatch
set scrolloff=3
set clipboard=unnamed,unnamedplus
set signcolumn=yes
set smartcase ignorecase
set expandtab
set shiftwidth=4
set smartindent
set softtabstop=4
set exrc
set wrap
set noshiftround
set matchpairs+=<:>
set undolevels=1000
set noswapfile
set path+=**
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set t_Co=256
set background=dark

call plug#begin('~/.vim/plugged')

Plug 'phanviet/vim-monokai-pro'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

set termguicolors
colorscheme monokai_pro

let mapleader=" "

map <leader><space> :let @/=''<cr>
nnoremap j gj
nnoremap k gk

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:tmux_navigator_save_on_switch = 2
let g:tmux_navigator_disable_when_zoomed = 1

" Snippets:
" nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup NTG
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
