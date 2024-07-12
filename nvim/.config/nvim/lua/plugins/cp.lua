return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        template_file = "./scripts/template.$(FEXT)",
        evaluate_template_modifiers = true,
        compile_command = {
          cpp = {
            exec = "g++",
            args = {
              "-std=c++20",
              "-Wall",
              "-Wshadow",
              "-O2",
              "-DDEBUG -Wextra -Wno-unused-result -Wfloat-equal -Wcast-qual -Wcast-align -g -fstack-protector -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG",
              "$(FNAME)",
              "-o",
              "$(FNOEXT)",
            },
          },
        },
        run_command = {
          cpp = { exec = "./$(FNOEXT)" },
        },
      })
    end,
  },
}
