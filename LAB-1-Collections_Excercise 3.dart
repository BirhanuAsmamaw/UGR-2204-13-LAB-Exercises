void main() {
  // Create a Map to store student names and marks
  Map<String, int> studentMarks = {};

  // Add student names and marks using putIfAbsent method
  studentMarks.putIfAbsent('John', () => 85);
  studentMarks.putIfAbsent('Alice', () => 90);
  studentMarks.putIfAbsent('Bob', () => 75);

  // Iterate over the entries using forEach method
  print('Student names and marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a student name exists in the map
  String searchName = 'Alice';
  if (studentMarks.containsKey(searchName)) {
    print('$searchName is present in the map with marks: ${studentMarks[searchName]}');
  } else {
    print('$searchName is not present in the map.');
  }
}
