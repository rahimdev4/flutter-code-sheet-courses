/// Lesson 04 — Variables and Data Types
///
/// Dart's core data types and ways to declare variables.

void main() {
  // Explicit types
  String name = 'Dart';
  int year = 2011;
  double version = 3.0;
  bool isAwesome = true;

  // Type inference with var
  var language = 'Dart'; // Dart infers String

  // Immutable variables
  final String creator = 'Google';
  const double pi = 3.14159;

  print('Language: $name');
  print('Created: $year');
  print('Version: $version');
  print('Is awesome? $isAwesome');
  print('Creator: $creator');
  print('Pi: $pi');
  print('Inferred type: ${language.runtimeType}');
}
