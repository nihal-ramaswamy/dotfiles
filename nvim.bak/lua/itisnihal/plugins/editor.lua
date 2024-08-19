return {{'tpope/vim-sleuth'}, {
    "nordtheme/vim",
    priority = 1000,
    init = function()
        vim.cmd.colorscheme 'nord'

        vim.cmd.hi 'Comment gui=none'
    end
}, {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
        require('which-key').setup()

        require('which-key').add {{
            '<leader>c',
            group = '[C]ode'
        }, {
            '<leader>d',
            group = '[D]ocument'
        }, {
            '<leader>r',
            group = '[R]ename'
        }, {
            '<leader>s',
            group = '[S]earch'
        }, {
            '<leader>w',
            group = '[W]orkspace'
        }, {
            '<leader>t',
            group = '[T]oggle'
        }, {
            '<leader>h',
            group = 'Git [H]unk',
            mode = {'n', 'v'}
        }, {
            '<leader>x',
            group = 'Debug',
            mode = {'n', 'v'}
        }, {
            '<leader>z',
            group = '[Z]enmode',
            mode = {'n', 'v'}
        }, {
            '<leader>u',
            group = '[U]ndotree',
            mode = {'n', 'v'}
        }, {
            '<leader>g',
            group = '[G]rug',
            mode = {'n', 'v'}
        }, {
            '<leader>T',
            group = '[T]rouble',
            mode = {'n', 'v'}
        }, {
            '<leader>n',
            group = '[N]oice',
            mode = {'n', 'v'}
        }}
    end
}, {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {'nvim-lua/plenary.nvim', {
        'nvim-telescope/telescope-fzf-native.nvim',

        build = 'make',

        cond = function()
            return vim.fn.executable 'make' == 1
        end
    }, {'nvim-telescope/telescope-ui-select.nvim'}},
    config = function()
        require('telescope').setup {
            extensions = {
                ['ui-select'] = {require('telescope.themes').get_dropdown()}
            }
        }
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        local builtin = require 'telescope.builtin'
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, {
            desc = '[S]earch [H]elp'
        })
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, {
            desc = '[S]earch [K]eymaps'
        })
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {
            desc = '[S]earch [F]iles'
        })
        vim.keymap.set('n', '<leader>ss', builtin.builtin, {
            desc = '[S]earch [S]elect Telescope'
        })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, {
            desc = '[S]earch current [W]ord'
        })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, {
            desc = '[S]earch by [G]rep'
        })
        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {
            desc = '[S]earch [D]iagnostics'
        })
        vim.keymap.set('n', '<leader>sr', builtin.resume, {
            desc = '[S]earch [R]esume'
        })
        vim.keymap.set('n', '<leader>s.', builtin.oldfiles, {
            desc = '[S]earch Recent Files ("." for repeat)'
        })
        vim.keymap.set('n', '<leader><leader>', builtin.buffers, {
            desc = '[ ] Find existing buffers'
        })
        vim.keymap.set('n', '<leader>/', function()

            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false
            })
        end, {
            desc = '[/] Fuzzily search in current buffer'
        })
        vim.keymap.set('n', '<leader>s/', function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = 'Live Grep in Open Files'
            }
        end, {
            desc = '[S]earch [/] in Open Files'
        })
        vim.keymap.set('n', '<leader>sn', function()
            builtin.find_files {
                cwd = vim.fn.stdpath 'config'
            }
        end, {
            desc = '[S]earch [N]eovim files'
        })
    end
}}
