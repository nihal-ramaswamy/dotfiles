return {{
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {{
        "<leader>zz",
        "<cmd>ZenMode<cr>",
        desc = "Toggle Zenmode"
    }},
    config = function()
        require("zen-mode").setup({
            window = {
                backdrop = 0.93,
                width = 150,
                height = 1
            },
            plugins = {
                options = {
                    showcmd = true
                },
                twilight = {
                    enabled = false
                },
                gitsigns = {
                    enabled = true
                }
            }
        })
    end
}}
