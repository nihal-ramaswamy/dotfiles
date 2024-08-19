return {{
    'MagicDuck/grug-far.nvim',
    config = function()
        require('grug-far').setup({});
        vim.keymap.set("n", "<leader>gf", ":lua require('grug-far').open()<CR>", {
            silent = true,
            desc = "Open [g]rug-[f]ar"
        })
    end
}}
