class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);
}

void main() {
  // Create objects of the Person class
  Person person1 = Person("Birhanu", 22, "200 Main St mariam");
  Person person2 = Person("Elias", 23, "400 Elm St mariam");

  // Access and print attributes of the objects
  print('Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');
  print('');

  print('Person 2:');
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');
  print('');

  // Modify attributes of the objects
  person1.age = 35;
  person2.address = "789 m to Bole";

  // Print modified attributes
  print('Modified Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');
  print('');

  print('Modified Person 2:');
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');
}
