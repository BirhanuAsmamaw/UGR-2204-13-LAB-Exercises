import 'dart:io';

void main() {
  // Specify the file path to read
  String filePath = 'example.txt';

  try {
    // Read the file
    File file = File(filePath);
    String fileContent = file.readAsStringSync();

    // Print the file content
    print('File content:');
    print(fileContent);
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found or unable to read file.');
    } else {
      print('Error: $e');
    }
  }
}
