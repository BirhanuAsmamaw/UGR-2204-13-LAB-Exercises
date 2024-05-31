void main() {
  // Define the range
  int start = 2;
  int end = 50;

  // Check for prime numbers within the range
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print('$i is a prime number');
    }
  }
}

// Function to check if a number is prime
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
