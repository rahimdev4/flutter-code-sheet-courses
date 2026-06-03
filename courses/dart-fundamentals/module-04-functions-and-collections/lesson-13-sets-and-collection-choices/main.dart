/// Lesson 13 — Sets and Collection Choices
///
/// Working with Sets and choosing the right collection.

void main() {
  // ── Creating a Set ──
  Set<String> fruits = {'Apple', 'Banana', 'Cherry'};
  print('Fruits: $fruits');

  // Adding elements
  fruits.add('Date');
  fruits.add('Apple'); // Duplicate — will be ignored!
  print('After adding: $fruits');
  print('Count: ${fruits.length}'); // Still 4, not 5

  // Removing elements
  fruits.remove('Banana');
  print('After removing Banana: $fruits');

  // Checking membership
  print('Has Cherry? ${fruits.contains('Cherry')}');

  print('');

  // ── Set Operations ──
  Set<String> setA = {'Red', 'Green', 'Blue'};
  Set<String> setB = {'Green', 'Blue', 'Yellow'};

  print('── Set Operations ──');
  print('A: $setA');
  print('B: $setB');
  print('Union:        ${setA.union(setB)}');
  print('Intersection: ${setA.intersection(setB)}');
  print('Difference:   ${setA.difference(setB)}');

  print('');

  // ── When to use what? ──
  print('── Collection Choices ──');
  print('List  → Ordered items, duplicates OK     [1, 2, 2, 3]');
  print('Set   → Unique items, no duplicates       {1, 2, 3}');
  print('Map   → Key-value pairs                   {name: Dart}');
}
