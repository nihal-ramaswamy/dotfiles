-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Tmux Navigator
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })

-- Debugger
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

-- Competitive Programming
vim.keymap.set(
  "n",
  "<C-b>",
  ":!g++ -std=c++20 -DDEBUG -O2 -Wall -Wshadow -Wno-unused-result -Wfloat-equal -Wl,-stack_size,0x10000000 -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %< <cr>"
)
