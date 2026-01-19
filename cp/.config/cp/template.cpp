#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>
using namespace __gnu_pbds;
using namespace std;

template <class T> using ordered_set = tree<T, null_type, less<T>, rb_tree_tag, tree_order_statistics_node_update>;
template <class K, class V> using ordered_map = tree<K, V, less<K>, rb_tree_tag, tree_order_statistics_node_update>;
using ll = long long;

#ifdef DEBUG
#include "../scripts/debugger.hpp"
#define debug_out(...) cerr << "[" << #__VA_ARGS__ << "]:", pretty_print::debug(__VA_ARGS__)
#else
#define debug_out(...) 42;
#endif

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
