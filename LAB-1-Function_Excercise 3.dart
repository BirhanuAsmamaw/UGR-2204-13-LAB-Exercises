void main() {
  // Define the input string
  String inputString = "Birhanu!";

  // Call the function to reverse the string
  String reversedString = reverseString(inputString);

  // Print the reversed string
  print('Original string: $inputString');
  print('Reversed string: $reversedString');
}

// Function to reverse a string
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}
