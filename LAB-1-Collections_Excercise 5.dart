class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to find the average mark
  double findAverageMark() {
    if (marks.isEmpty) {
      return 0; // Return 0 if marks list is empty
    }
    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a student object
  Student student = Student('John', [80, 75, 90, 85, 88]);

  // Find and print the average mark of the student
  double averageMark = student.findAverageMark();
  print('Average mark of ${student.name}: $averageMark');
}
