import 'dart:io';

void main() {
  // I Defined constant for the speed of light in meters per second
  const int speedOfLight = 299792458;

  // Prompt the user to enter the distance
  print('Enter the distance (in meters): ');
  
  // Read the user input from the console
  String? distanceInput = stdin.readLineSync();

  // I converted the user input to a double
  double? distance = double.tryParse(distanceInput!);

  // I checked if the input is not null or negative 
  if (distance != null && distance > 0) {
    // here is the Calculation to the time it takes for light to travel the distance
    double timeInSeconds = distance / speedOfLight;

    // Print the result
    print('It takes ${timeInSeconds.toStringAsFixed(9)} seconds for light to travel $distance meters.');
  } else {
    print('Invalid input. Please enter a valid distance.');
  }
}
