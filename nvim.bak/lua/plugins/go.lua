return {
  {
    "leoluz/nvim-dap-go",
    version = "*",
    ft = { "go", "gomod", "gowork", "gotmpl" },
    config = function()
      require("dap-go").setup({
        dap_configurations = {
          {
            type = "go",
            name = "Attach remote",
            mode = "remote",
            request = "attach",
          },
        },
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          port = "${port}",
          args = {},
          build_flags = "",
          detached = true,
          cwd = nil,
        },
      })
    end,
  },
}
