syntax on
filetype plugin indent on
let mapleader = " "

set signcolumn=yes cursorline colorcolumn=80
set lazyredraw
set path+=**
set title
set number relativenumber
set wrap linebreak showbreak=+++
set showmatch smartcase ignorecase
set expandtab smartindent shiftwidth=4 softtabstop=4 tabstop=4
set autochdir autowriteall
set undolevels=1000
set clipboard=unnamedplus
set wildmode=longest:full,full
set mouse=a
set completeopt=noinsert,menuone,noselect
set updatetime=50
set shortmess+=c

call plug#begin()
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'preservim/nerdtree'
    Plug 'tanvirtin/monokai.nvim'
    Plug 'mbbill/undotree'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'SirVer/ultisnips'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme monokai

lua <<EOF
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'molokai',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  tabline = {
    lualine_a = {'tabs'},
    lualine_b = {'windows'},
    lualine_z = {'buffers'}
  },
}
EOF

" Custom
nnoremap j gj
nnoremap k gk
map <leader><space> :let @/=''<CR>

" Nerdtree
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeToggle<CR>

" Undotree
nnoremap <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 4

if has("persistent_undo")
   let target_path = expand('~/.undodir')
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir=target_path
    set undofile
endif

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
        disable = { "yaml" }
    }
}
local ts_utils = require 'nvim-treesitter.ts_utils'
EOF


" LSP
lua <<EOF
require'lspconfig'.pyright.setup{}
EOF
nnoremap <silent> <leader>gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <silent> <leader>gD <cmd>lua vim.lsp.buf.declaration()<cr>
nnoremap <silent> <leader>gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap <silent> <leader>gi <cmd>lua vim.lsp.buf.implementation()<cr>
nnoremap <silent> <leader>K <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <silent> <leader><c-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
nnoremap <silent> <leader><c-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> <leader><c-p> <cmd>lua vim.lsp.diagnostic.goto_next()<cr>

" CMP
lua <<EOF
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, -- For ultisnips users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
EOF

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Trim whitespaces
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup NTG
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

