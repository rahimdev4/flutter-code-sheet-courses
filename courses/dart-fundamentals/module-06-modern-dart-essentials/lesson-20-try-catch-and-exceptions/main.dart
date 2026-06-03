/// Lesson 20 — Try, Catch, and Exceptions
///
/// Handling errors gracefully in Dart.

void main() {
  // ── Basic try/catch ──
  print('── Basic Try/Catch ──');
  try {
    int result = 10 ~/ 0; // Division by zero!
    print('Result: $result');
  } catch (e) {
    print('❌ Error caught: $e');
  }

  print('');

  // ── Catching specific types ──
  print('── Specific Exception Types ──');
  try {
    var number = int.parse('not-a-number');
    print('Parsed: $number');
  } on FormatException catch (e) {
    print('❌ Format error: ${e.message}');
  } catch (e) {
    print('❌ Unknown error: $e');
  }

  print('');

  // ── The finally block ──
  print('── Finally Block ──');
  try {
    print('Opening file...');
    throw Exception('File not found');
  } catch (e) {
    print('❌ $e');
  } finally {
    print('🧹 Cleanup: This always runs, error or not.');
  }

  print('');

  // ── Throwing custom exceptions ──
  print('── Custom Exceptions ──');
  try {
    withdrawMoney(100, 50);  // ✅ OK
    withdrawMoney(100, 200); // ❌ Will throw
  } catch (e) {
    print('❌ $e');
  }
}

/// Withdraws money, throws if insufficient balance.
void withdrawMoney(double balance, double amount) {
  if (amount > balance) {
    throw Exception(
      'Insufficient funds! Balance: \$${balance}, Requested: \$${amount}',
    );
  }
  print('✅ Withdrawn \$${amount}. Remaining: \$${balance - amount}');
}
