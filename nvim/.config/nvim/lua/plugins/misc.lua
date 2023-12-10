return {
  {
    "nyoom-engineering/oxocarbon.nvim",
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
    "karb94/neoscroll.nvim",
    keys = { "<C-j>", "<C-k>" },
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "andreadev-it/shade.nvim",
    config = function()
      require("shade").setup({
        exclude_filetypes = { "NvimTree" },
      })
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
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
}
