double divideNumbers(double numerator, double denominator) {
  try {
    return numerator / denominator;
  } catch (e) {
    print('Error: Division by zero is not allowed.');
    return double.nan; // Return NaN (Not a Number) to indicate an error
  }
}

void main() {
  double a = 10;
  double b = 0;

  // Perform division and handle potential DivisionByZeroError
  double result = divideNumbers(a, b);
  if (!result.isNaN) {
    print('Result of $a divided by $b: $result');
  }
}
