vim.keymap.set("v", "<", "<gv", {
    desc = 'Indent left'
})
vim.keymap.set("v", ">", ">gv", {
    desc = 'Indent right'
})
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<CR>', {
    desc = 'Open file explorer'
})
vim.keymap.set('n', '<ESC>', '<cmd>noh<CR>', {
    desc = 'Clear Highlights'
}) -- Clear highlights
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {
    desc = 'Open diagnostic [Q]uickfix list'
})
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {
    desc = 'Exit terminal mode'
})

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', {
    desc = 'Move focus to the left window'
})
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', {
    desc = 'Move focus to the right window'
})
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', {
    desc = 'Move focus to the lower window'
})
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', {
    desc = 'Move focus to the upper window'
})

vim.keymap.set("n", "<C-b>",
    ":!g++ -std=c++20 -DDEBUG -O2 -Wall -Wshadow -Wno-unused-result -Wfloat-equal -Wl,-stack_size,0x10000000 -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %< <cr>")
