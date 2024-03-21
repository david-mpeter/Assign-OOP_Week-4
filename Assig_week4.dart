import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a class that implements the Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Define a superclass
class Shape {
  void draw() {
    print('Drawing shape...');
  }
}

// Define a subclass that overrides the inherited method
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing circle...');
  }
}

// Define a class that initializes data from a file
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // factory Person.fromFile(File file) {
  //   List<String> lines = file.readAsLinesSync();
  //   String name = lines[0];
  //   int age = int.parse(lines[1]);
  //   return Person(name, age);
  // }
}

// Define a method that demonstrates the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Feature 1: Object-oriented model using classes and inheritance
  Dog dog = Dog();
  dog.makeSound();

  // Feature 2: Class implementing an interface
  Circle circle = Circle();
  circle.draw();

  // Feature 3: Subclass overriding an inherited method
  Shape shape = Circle();
  shape.draw();

  // Feature 4: Instance of a class initialized with data from a file
  // File file = File('person.txt');
  // Person person = Person.fromFile(file);
  // print('Name: ${person.name}, Age: ${person.age}');

  // Feature 5: Method demonstrating the use of a loop
  printNumbers(5);
}
