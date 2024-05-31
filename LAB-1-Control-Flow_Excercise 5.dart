import 'dart:io';

void main() {
  // Prompt the user to enter a grade
  print('Enter your grade: ');
  String? gradeInput = stdin.readLineSync();

  // Convert the user input to uppercase for consistency
  String grade = gradeInput!.toUpperCase();

  // Determine the corresponding letter grade using a switch statement
  switch (grade) {
    case 'A':
      print('Your letter grade is A.');
      break;
    case 'B':
      print('Your letter grade is B.');
      break;
    case 'C':
      print('Your letter grade is C.');
      break;
    case 'D':
      print('Your letter grade is D.');
      break;
    case 'F':
      print('Your letter grade is F.');
      break;
    default:
      print('Invalid grade.');
  }
}
