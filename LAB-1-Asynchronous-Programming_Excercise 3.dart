import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay of 2 seconds
  List<String> data = ['John', 'Alice', 'Bob', 'Emma', 'Michael'];
  return data;
}

void main() async {
  print('Loading data from database...');

  // Wait for the data to be fetched asynchronously
  List<String> fetchedData = await fetchDataFromDatabase();

  print('Data loaded successfully:');
  print(fetchedData);
}
