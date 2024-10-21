return {
  "mfussenegger/nvim-jdtls",
  config = function()
    local config = {
      cmd = { "/usr/local/bin/jdtls" },
      root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-Current",
                path = "/Users/itisnihal/.sdkman/candidates/java/current",
              },
            },
          },
        },
      },
    }
    require("jdtls").start_or_attach(config)
  end,
}
