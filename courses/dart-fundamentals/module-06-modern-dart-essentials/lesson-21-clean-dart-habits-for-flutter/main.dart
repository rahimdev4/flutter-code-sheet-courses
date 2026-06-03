/// Lesson 21 — Clean Dart Habits for Flutter
///
/// Best practices for writing clean, readable Dart code.

void main() {
  print('── Clean Dart Habits ──');
  print('');

  // ✅ HABIT 1: Use meaningful names
  // Bad:  var x = 'Alice';
  // Good:
  final String userName = 'Alice';
  print('1️⃣  Meaningful names: userName = "$userName"');

  // ✅ HABIT 2: Prefer final/const over var
  // Bad:  var pi = 3.14;
  // Good:
  const double pi = 3.14159;
  final DateTime loginTime = DateTime.now();
  print('2️⃣  Use const/final: pi = $pi, login = $loginTime');

  // ✅ HABIT 3: Write short, focused functions
  final double price = 49.99;
  final double tax = calculateTax(price);
  final String formatted = formatPrice(price + tax);
  print('3️⃣  Small functions: $formatted');

  // ✅ HABIT 4: Use string interpolation, not concatenation
  // Bad:  'Hello ' + userName + '!'
  // Good:
  print('4️⃣  Interpolation: Hello, $userName!');

  // ✅ HABIT 5: Handle null safely
  String? nickname;
  final String displayName = nickname ?? userName;
  print('5️⃣  Null safety: displayName = "$displayName"');

  // ✅ HABIT 6: Use collection methods
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  final List<int> evens = numbers.where((n) => n.isEven).toList();
  print('6️⃣  Collection methods: evens = $evens');

  print('');
  print('🎉 You\'re ready for Flutter!');
}

/// Calculates tax at 10%.
double calculateTax(double price) => price * 0.10;

/// Formats a price with currency symbol.
String formatPrice(double amount) => '\$${amount.toStringAsFixed(2)}';
