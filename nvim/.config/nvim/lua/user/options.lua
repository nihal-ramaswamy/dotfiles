vim.cmd [[syntax on]]
vim.cmd [[filetype plugin indent on]]

local options = {
    signcolumn='yes:1',
    cursorline=true,
    colorcolumn='80',
    title=true,
    number=true,
    relativenumber=true,

    lazyredraw=true,

    termguicolors=true,

    wrap=true,
    linebreak=true,
    showbreak='+++',

    showmatch=true,
    smartcase=true,
    ignorecase=true,

    expandtab=true,
    softtabstop=4,
    shiftwidth=4,
    tabstop=4,

    autochdir=true,
    autowriteall=true,
    undolevels=1000,
    undodir="~/.undodir",
    undofile=true,

    clipboard='unnamedplus',
    mouse='a',

    completeopt={ 'noinsert', 'menuone', 'noselect' },
    wildmode={ 'longest:full', 'full' },

    updatetime=50,


    list = true,
    listchars = {
        tab = '» ',
        trail = '␣',
        extends = '▶',
        precedes = '◀',
    },

    background = 'dark',
    conceallevel = 0
}

vim.opt.path:append('**')
vim.opt.shortmess:append('c')

for k, v in pairs(options) do
    vim.opt[k] = v
end
