class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int totalMarks = 0;
    for (int mark in marks) {
      totalMarks += mark;
    }
    return totalMarks;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  // Create a student object
  Student student = Student("Birhanu", 22, "200 Main St mariam", 101, [85, 90, 75, 88]);

  // Print student details
  print('Student Details:');
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Roll Number: ${student.rollNumber}');
  print('Marks: ${student.marks}');
  print('');

  // Calculate and print total marks
  int totalMarks = student.calculateTotalMarks();
  print('Total Marks: $totalMarks');

  // Calculate and print average marks
  double averageMarks = student.calculateAverageMarks();
  print('Average Marks: $averageMarks');
}
