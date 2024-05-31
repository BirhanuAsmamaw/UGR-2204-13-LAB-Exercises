import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = List.generate(10, (_) => Random().nextInt(10));

  // Print the original list of random numbers
  print('Original list of random numbers: $randomNumbers');

  // Use a Set to remove duplicate elements
  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  // Print the unique numbers
  print('Unique numbers: $uniqueNumbers');
}
