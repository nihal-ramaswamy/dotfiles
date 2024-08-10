return {
  {
    "NachoNievaG/atac.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    oconfig = function()
      require("atac").setup()
    end,
  },
}
