/// Lesson 04 — Variables and Values
///
/// How to store and work with data in Dart.

void main() {
  // Explicit types
  String name = 'Dart';
  int year = 2011;
  double version = 3.0;
  bool isAwesome = true;

  // Type inference with var
  var language = 'Dart'; // Dart infers String
  var count = 42;        // Dart infers int

  print('── Variables with Explicit Types ──');
  print('Name: $name (${name.runtimeType})');
  print('Year: $year (${year.runtimeType})');
  print('Version: $version (${version.runtimeType})');
  print('Is Awesome: $isAwesome (${isAwesome.runtimeType})');

  print('');
  print('── Variables with Type Inference ──');
  print('Language: $language (${language.runtimeType})');
  print('Count: $count (${count.runtimeType})');

  // Updating values
  count = 100;
  print('');
  print('Updated count: $count');
}
