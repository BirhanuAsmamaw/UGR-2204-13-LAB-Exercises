void main() {
  List<String> favoriteHobbies = ['Reading', 'Coding', 'Cooking'];

  // Print the initial list of favorite hobbies
  print('Initial list of favorite hobbies: $favoriteHobbies');

  // Add a new hobby to the list
  favoriteHobbies.add('Gardening');
  print('After adding a hobby: $favoriteHobbies');

  // Remove a hobby from the list
  favoriteHobbies.remove('Cooking');
  print('After removing a hobby: $favoriteHobbies');

  // Sort the list of hobbies
  favoriteHobbies.sort();
  print('After sorting the hobbies: $favoriteHobbies');

  // Check if the list is empty
  if (favoriteHobbies.isEmpty) {
    print('The list of favorite hobbies is empty.');
  } else {
    print('The list of favorite hobbies is not empty.');
  }
}
