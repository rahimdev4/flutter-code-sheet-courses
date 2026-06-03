/// Lesson 13 — Classes and Objects
///
/// Defining classes and creating objects.

void main() {
  // Creating objects
  var dog = Animal('Buddy', 'Dog', 3);
  var cat = Animal('Whiskers', 'Cat', 5);

  // Using methods
  dog.introduce();
  cat.introduce();

  print('');
  print('${dog.name} says: ${dog.speak()}');
  print('${cat.name} says: ${cat.speak()}');
}

/// A simple class representing an animal.
class Animal {
  String name;
  String species;
  int age;

  // Constructor
  Animal(this.name, this.species, this.age);

  // Method
  void introduce() {
    print('🐾 Hi! I\'m $name, a $age-year-old $species.');
  }

  // Method with return value
  String speak() {
    if (species == 'Dog') return 'Woof! 🐕';
    if (species == 'Cat') return 'Meow! 🐱';
    return '...';
  }
}
