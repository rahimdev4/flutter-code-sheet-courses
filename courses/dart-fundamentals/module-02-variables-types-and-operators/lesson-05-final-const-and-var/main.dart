/// Lesson 05 — Final, Const, and Var
///
/// Understanding the three ways to declare variables in Dart.

void main() {
  // ── var: mutable, can be changed ──
  var score = 0;
  print('── var (mutable) ──');
  print('Score: $score');
  score = 100; // ✅ Can reassign
  print('Score updated: $score');

  print('');

  // ── final: set once at runtime ──
  final String playerName = 'Alice';
  final DateTime now = DateTime.now();
  print('── final (set once, runtime) ──');
  print('Player: $playerName');
  print('Time: $now');
  // playerName = 'Bob'; // ❌ Error! Cannot reassign a final variable

  print('');

  // ── const: compile-time constant ──
  const double pi = 3.14159;
  const int maxPlayers = 4;
  print('── const (compile-time constant) ──');
  print('Pi: $pi');
  print('Max Players: $maxPlayers');
  // const time = DateTime.now(); // ❌ Error! Not known at compile time

  print('');

  // ── When to use what? ──
  print('── Quick Guide ──');
  print('var   → Value will change (counters, state)');
  print('final → Value set once, known at runtime (API data, timestamps)');
  print('const → Value never changes, known at compile time (pi, config)');
}
