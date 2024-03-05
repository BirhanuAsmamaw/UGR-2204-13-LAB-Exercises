import 'dart:math';

// Abstract Shape class
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
}

// Circle subclass
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementation of calculateArea() for Circle
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Square subclass
class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Implementation of calculateArea() for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create a Circle object
  Circle circle = Circle(5);

  // Calculate and print the area of the circle
  print('Area of the circle: ${circle.calculateArea()}');

  // Create a Square object
  Square square = Square(4);

  // Calculate and print the area of the square
  print('Area of the square: ${square.calculateArea()}');
}
