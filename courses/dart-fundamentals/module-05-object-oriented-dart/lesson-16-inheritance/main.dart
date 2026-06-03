/// Lesson 15 — Inheritance
///
/// Extending classes to reuse and customize behavior.

void main() {
  var dog = Dog('Buddy', 3);
  var cat = Cat('Whiskers', 5);

  dog.introduce();
  dog.fetch();

  print('');

  cat.introduce();
  cat.purr();
}

/// Parent class
class Pet {
  String name;
  int age;

  Pet(this.name, this.age);

  void introduce() {
    print('🐾 I\'m $name, $age years old.');
  }

  // Method that can be overridden
  String sound() => '...';
}

/// Child class — Dog
class Dog extends Pet {
  Dog(String name, int age) : super(name, age);

  @override
  String sound() => 'Woof!';

  @override
  void introduce() {
    super.introduce();
    print('   I say: ${sound()} 🐕');
  }

  void fetch() {
    print('   $name fetches the ball! 🎾');
  }
}

/// Child class — Cat
class Cat extends Pet {
  Cat(String name, int age) : super(name, age);

  @override
  String sound() => 'Meow!';

  @override
  void introduce() {
    super.introduce();
    print('   I say: ${sound()} 🐱');
  }

  void purr() {
    print('   $name is purring... 😺');
  }
}
