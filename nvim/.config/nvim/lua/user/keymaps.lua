local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- space is leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- easier movement
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

-- get rid of highlights
keymap("n", "<leader><Space>", ":noh<CR>", opts)
