class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate the area of the rectangle
  double calculateArea() {
    return width * height;
  }

  // Method to calculate the perimeter of the rectangle
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a rectangle object
  Rectangle rectangle = Rectangle(5, 8);

  // Calculate and print the area of the rectangle
  double area = rectangle.calculateArea();
  print('Area of the rectangle: $area');

  // Calculate and print the perimeter of the rectangle
  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter of the rectangle: $perimeter');
}
