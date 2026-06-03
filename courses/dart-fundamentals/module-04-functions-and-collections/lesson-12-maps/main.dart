/// Lesson 12 — Maps
///
/// Working with key-value pair collections.

void main() {
  // Creating a map
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  print('Ages: $ages');

  // Accessing values
  print('Alice is ${ages['Alice']} years old.');

  // Adding entries
  ages['Diana'] = 28;
  print('After adding Diana: $ages');

  // Removing entries
  ages.remove('Bob');
  print('After removing Bob: $ages');

  // Checking keys and values
  print('Has Alice? ${ages.containsKey('Alice')}');
  print('Has age 22? ${ages.containsValue(22)}');

  // Properties
  print('Keys: ${ages.keys.toList()}');
  print('Values: ${ages.values.toList()}');
  print('Length: ${ages.length}');

  // Iterating
  print('');
  print('── All Entries ──');
  ages.forEach((name, age) {
    print('  $name → $age years old');
  });
}
