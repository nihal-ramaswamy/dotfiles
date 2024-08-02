return {
  { "olimorris/onedarkpro.nvim" },
  { "loctvl842/monokai-pro.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "northern",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right",
        },
      })
    end,
  },
  {
    "fcancelinha/northern.nvim",
    config = function()
      local colors = require("northern.colors")
      vim.api.nvim_set_hl(0, "LspInlayHint", { fg = colors.frost.sea, underline = true })
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = { { "<leader>fz", "<cmd>ZenMode<cr>", desc = "Toggle Zenmode" } },
    config = function()
      require("zen-mode").setup({
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
      })
    end,
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    keys = { { "<leader>cs", "<cmd>Outline<cr>", desc = "Symbols Outline" } },
    config = true,
  },

  {
    "christoomey/vim-tmux-navigator",
    event = "VimEnter",
  },
}
