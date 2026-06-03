/// Lesson 09 — Loops in Dart
///
/// Repeating actions with different loop types.

void main() {
  // --- For loop ---
  print('── For Loop (1 to 5) ──');
  for (int i = 1; i <= 5; i++) {
    print('  Count: $i');
  }

  print('');

  // --- For-in loop ---
  print('── For-In Loop ──');
  List<String> colors = ['Red', 'Green', 'Blue'];
  for (String color in colors) {
    print('  Color: $color');
  }

  print('');

  // --- While loop ---
  print('── While Loop ──');
  int count = 3;
  while (count > 0) {
    print('  Countdown: $count');
    count--;
  }
  print('  🚀 Launch!');

  print('');

  // --- Break and Continue ---
  print('── Break & Continue ──');
  for (int i = 1; i <= 10; i++) {
    if (i == 3) continue; // Skip 3
    if (i == 7) break;    // Stop at 7
    print('  Number: $i');
  }
}
