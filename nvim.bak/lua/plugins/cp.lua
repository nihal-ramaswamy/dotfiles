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

-- Template:
-- /**
--  *    author:  itisnihal
--  *    created: $(DATE)
--  **/
--
-- #include <algorithm>
-- #include <array>
-- #include <bitset>
-- #include <cassert>
-- #include <chrono>
-- #include <cmath>
-- #include <concepts>
-- #include <cstring>
-- #include <deque>
-- #include <functional>
-- #include <iomanip>
-- #include <iostream>
-- #include <map>
-- #include <numeric>
-- #include <queue>
-- #include <random>
-- #include <ranges>
-- #include <set>
-- #include <vector>
-- using namespace std;
-- using ll = long long;
--
-- void test_case([[maybe_unused]] int _tt) {}
--
-- int main() {
--   cin.tie(0)->sync_with_stdio(0);
--   cout << fixed << setprecision(15);
--   int TT = 1;
--   cin >> TT;
--   for (int _tt = 1; _tt <= TT; ++_tt) {
--     test_case(_tt);
--   }
--   return 0;
-- }
--
