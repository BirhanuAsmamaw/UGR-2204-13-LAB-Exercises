import 'dart:io';

void main() {
  // Prompt the user to enter two numbers
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Prompt the user to enter the operation
  print('Enter the operation (+, -, *, /): ');
  String operation = stdin.readLineSync()!;

  // Perform the operation based on the user's input
  switch (operation) {
    case '+':
      print('$num1 + $num2 = ${num1 + num2}');
      break;
    case '-':
      print('$num1 - $num2 = ${num1 - num2}');
      break;
    case '*':
      print('$num1 * $num2 = ${num1 * num2}');
      break;
    case '/':
      print('$num1 / $num2 = ${num1 / num2}');
      break;
    default:
      print('Invalid operation');
  }
}
