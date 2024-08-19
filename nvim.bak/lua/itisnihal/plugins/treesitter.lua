return {{
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {},
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = {'markdown'}
        },
        indent = {
            enable = true,
            disable = {'ruby'}
        }
    },
    config = function(_, opts)
        ---@diagnostic disable-next-line: missing-fields
        require('nvim-treesitter.configs').setup(opts)
    end
}}
