#include <algorithm>
#include <array>
#include <bitset>
#include <cassert>
#include <chrono>
#include <cmath>
#include <concepts>
#include <cstring>
#include <deque>
#include <functional>
#include <iomanip>
#include <iostream>
#include <map>
#include <numeric>
#include <queue>
#include <random>
#include <ranges>
#include <set>
#include <vector>

#ifdef DEBUG
#include "../scripts/debugger.hpp"
#define debug_out(...) cerr << "[" << #__VA_ARGS__ << "]:", pretty_print::debug(__VA_ARGS__)
#else
#define debug_out(...) 42;
#endif

using namespace std;
using ll = long long;

void test_case([[maybe_unused]] int _tt) {
}

int main() {
  cin.tie(0)->sync_with_stdio(0);
  cout << fixed << setprecision(15);
  int TT = 1;
  cin >> TT;
  for (int _tt = 1; _tt <= TT; ++_tt) {
    test_case(_tt);
  }
  return 0;
}
