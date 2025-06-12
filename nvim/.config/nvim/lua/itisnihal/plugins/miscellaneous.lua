function ColorMyPencils(color)
  color = color or 'rose-pine-moon'
  vim.cmd.hi 'Comment gui=none'

  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
        styles = {},
      }

      -- ColorMyPencils 'rose-pine-moon'
    end,
  },
  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000,
    init = function()
      -- ColorMyPencils('monokai-pro')
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000,
    init = function()
      ColorMyPencils 'catppuccin-mocha'
    end,
  },
  {
    'folke/zen-mode.nvim',
    cmd = 'ZenMode',
    keys = { { '<leader>zm', '<cmd>ZenMode<cr>', desc = 'Toggle Zenmode' } },
    config = function()
      require('zen-mode').setup {
        window = {
          backdrop = 0.93,
          width = 150,
          height = 1,
        },
        plugins = {
          options = {
            showcmd = true, -- disables the command in the last line of the screen
          },
          twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
          gitsigns = { enabled = true }, -- disables git signs
        },
      }
    end,
  },
  {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
    keys = { { '<leader>u', '<cmd>UndotreeToggle<cr>', desc = 'Toggle UndoTree' } },
  },
  {
    'hedyhli/outline.nvim',
    cmd = 'Outline',
    keys = { { '<leader>cs', '<cmd>Outline<cr>', desc = 'Symbols Outline' } },
    config = true,
  },

  {
    'christoomey/vim-tmux-navigator',
    event = 'VimEnter',
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  },
  {
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  },
  {
    'folke/todo-comments.nvim', -- Highlight todo, notes, etc in comments
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
}
