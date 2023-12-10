return {
  {
    "rust-lang/rust-analyzer",
    ft = { "rust" },
  },
  {
    "simrat39/rust-tools.nvim",
    ft = { "rust" },
    config = function()
      require("rust-tools").setup()
    end,
  },
}
