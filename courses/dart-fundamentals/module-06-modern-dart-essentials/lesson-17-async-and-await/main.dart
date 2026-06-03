/// Lesson 17 — Async and Await
///
/// Working with asynchronous operations in Dart.

void main() async {
  print('⏳ Starting...');

  // Await a future
  String data = await fetchData();
  print('📦 Received: $data');

  // Multiple async calls
  print('');
  print('⏳ Fetching user info...');
  String user = await fetchUser();
  String email = await fetchEmail();
  print('👤 User: $user');
  print('📧 Email: $email');

  // Error handling
  print('');
  try {
    await failingOperation();
  } catch (e) {
    print('❌ Error caught: $e');
  }

  print('');
  print('✅ All done!');
}

/// Simulates fetching data with a delay.
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Hello from the server!';
}

/// Simulates fetching a username.
Future<String> fetchUser() async {
  await Future.delayed(Duration(milliseconds: 500));
  return 'DartLearner';
}

/// Simulates fetching an email.
Future<String> fetchEmail() async {
  await Future.delayed(Duration(milliseconds: 500));
  return 'learner@dart.dev';
}

/// Simulates an operation that fails.
Future<void> failingOperation() async {
  await Future.delayed(Duration(milliseconds: 300));
  throw Exception('Something went wrong!');
}
