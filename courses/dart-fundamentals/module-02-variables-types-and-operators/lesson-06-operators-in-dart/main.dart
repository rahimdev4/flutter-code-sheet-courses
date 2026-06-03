/// Lesson 06 — Operators in Dart
///
/// Arithmetic, comparison, and logical operators.

void main() {
  int x = 15;
  int y = 4;

  // Arithmetic operators
  print('── Arithmetic ──');
  print('$x + $y = ${x + y}');
  print('$x - $y = ${x - y}');
  print('$x * $y = ${x * y}');
  print('$x / $y = ${x / y}');
  print('$x ~/ $y = ${x ~/ y}');
  print('$x % $y = ${x % y}');

  print('');

  // Comparison operators
  print('── Comparison ──');
  print('$x == $y → ${x == y}');
  print('$x != $y → ${x != y}');
  print('$x > $y  → ${x > y}');
  print('$x < $y  → ${x < y}');
  print('$x >= $y → ${x >= y}');
  print('$x <= $y → ${x <= y}');

  print('');

  // Logical operators
  print('── Logical ──');
  bool a = true;
  bool b = false;
  print('$a && $b → ${a && b}');
  print('$a || $b → ${a || b}');
  print('!$a → ${!a}');
}
