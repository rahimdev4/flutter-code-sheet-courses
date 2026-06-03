/// Lesson 03 — How Dart Code Runs
///
/// Dart executes code line by line starting from main().

void main() {
  print('1️⃣  Program starts here — inside main()');

  // Variables are created in order
  String language = 'Dart';
  print('2️⃣  Variable created: language = $language');

  // Calling a function
  print('3️⃣  About to call a function...');
  sayHello();
  print('5️⃣  Back in main() after the function call');

  // Dart is compiled before running
  // - JIT (Just-In-Time): Used during development for fast reload
  // - AOT (Ahead-Of-Time): Used in production for fast startup

  print('');
  print('── How Dart Runs ──');
  print('📝 You write .dart files');
  print('⚙️  Dart compiles your code');
  print('🚀 The compiled code runs, starting from main()');
  print('📦 Each line executes top to bottom');

  print('');
  print('6️⃣  Program ends here');
}

/// A simple function to show execution flow.
void sayHello() {
  print('4️⃣  Inside sayHello() function');
}
