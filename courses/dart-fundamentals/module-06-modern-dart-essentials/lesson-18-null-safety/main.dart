/// Lesson 16 — Null Safety
///
/// Understanding nullable types and null-aware operators.

void main() {
  // Non-nullable — cannot be null
  String name = 'Dart';
  print('Name: $name');

  // Nullable — can be null
  String? nickname;
  print('Nickname: $nickname'); // prints: null

  // Null-aware operator ?? (default value)
  String displayName = nickname ?? 'No nickname set';
  print('Display: $displayName');

  // Conditional access ?.
  print('Nickname length: ${nickname?.length}'); // null (no crash)

  // Assigning a value
  nickname = 'Darty';
  print('Nickname now: $nickname');
  print('Nickname length: ${nickname.length}'); // works — no longer null

  // Using null safety in functions
  print('');
  greetUser(null);
  greetUser('Alice');
}

/// Greets a user, handling null names gracefully.
void greetUser(String? name) {
  String greeting = 'Hello, ${name ?? 'Guest'}!';
  print(greeting);
}
