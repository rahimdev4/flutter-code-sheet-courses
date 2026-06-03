/// Lesson 10 — Functions
///
/// Defining and using functions in Dart.

void main() {
  // Calling a simple function
  greet('Dart Learner');

  // Function with a return value
  int result = add(5, 3);
  print('5 + 3 = $result');

  // Named parameters
  printInfo(name: 'Alice', age: 25);

  // Default parameters
  printInfo(name: 'Bob'); // age defaults to 0

  // Arrow function
  print('Square of 6: ${square(6)}');
}

/// A simple void function.
void greet(String name) {
  print('👋 Hello, $name!');
}

/// A function that returns a value.
int add(int a, int b) {
  return a + b;
}

/// A function with named parameters and defaults.
void printInfo({required String name, int age = 0}) {
  print('Name: $name, Age: $age');
}

/// An arrow function (single expression).
int square(int n) => n * n;
