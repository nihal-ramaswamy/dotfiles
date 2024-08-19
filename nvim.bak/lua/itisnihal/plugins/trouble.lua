return {{
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {{
        "<leader>Td",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "[T]rouble [D]iagnostics"
    }, {
        "<leader>Tb",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "[T]rouble [B]uffer Diagnostics"
    }, {
        "<leader>Ts",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "[T]rouble [S]ymbols"
    }, {
        "<leader>Tl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "[T]rouble [L]SP Definitions / references / ... "
    }, {
        "<leader>TL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "[T]rouble [L]ocation List"
    }, {
        "<leader>Tq",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "[T]rouble [Q]uickfix List"
    }}
}}
