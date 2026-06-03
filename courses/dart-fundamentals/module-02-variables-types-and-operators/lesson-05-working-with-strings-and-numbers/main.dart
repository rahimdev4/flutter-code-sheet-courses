/// Lesson 05 — Working with Strings and Numbers
///
/// Common string methods and number operations in Dart.

void main() {
  // --- Strings ---
  String greeting = 'Hello, Dart!';

  print('Original: $greeting');
  print('Uppercase: ${greeting.toUpperCase()}');
  print('Lowercase: ${greeting.toLowerCase()}');
  print('Length: ${greeting.length}');
  print('Contains "Dart": ${greeting.contains('Dart')}');
  print('Replaced: ${greeting.replaceAll('Dart', 'Flutter')}');

  // String splitting
  String csv = 'apple,banana,cherry';
  List<String> fruits = csv.split(',');
  print('Fruits: $fruits');

  print('');

  // --- Numbers ---
  int a = 10;
  int b = 3;

  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');       // double division
  print('$a ~/ $b = ${a ~/ b}');     // integer division
  print('$a % $b = ${a % b}');       // remainder

  // Type conversion
  String numStr = '42';
  int parsed = int.parse(numStr);
  print('Parsed: $parsed (type: ${parsed.runtimeType})');
}
