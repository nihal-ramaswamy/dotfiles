-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })

vim.keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end)
vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>so", function()
  require("dap").step_over()
end)
vim.keymap.set("n", "<leader>si", function()
  require("dap").step_into()
end)
