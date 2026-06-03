/// Lesson 11 — Lists
///
/// Creating and working with ordered collections.

void main() {
  // Creating a list
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('Fruits: $fruits');

  // Adding elements
  fruits.add('Date');
  fruits.insert(1, 'Avocado');
  print('After adding: $fruits');

  // Accessing elements
  print('First: ${fruits.first}');
  print('Last: ${fruits.last}');
  print('At index 2: ${fruits[2]}');

  // Removing elements
  fruits.remove('Banana');
  print('After removing Banana: $fruits');

  // List properties
  print('Length: ${fruits.length}');
  print('Contains Apple? ${fruits.contains('Apple')}');

  // Iterating
  print('');
  print('── All Fruits ──');
  for (int i = 0; i < fruits.length; i++) {
    print('  ${i + 1}. ${fruits[i]}');
  }

  // Useful methods
  List<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6];
  numbers.sort();
  print('');
  print('Sorted numbers: $numbers');
  print('Reversed: ${numbers.reversed.toList()}');
}
