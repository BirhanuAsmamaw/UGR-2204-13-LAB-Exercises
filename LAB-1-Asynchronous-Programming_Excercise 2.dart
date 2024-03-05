import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Failed to download file. Status code: ${response.statusCode}');
  }
}

void main() async {
  String url = 'https://example.com/examplefile.txt'; // URL of the file to download
  String savePath = 'examplefile.txt'; // Path to save the downloaded file

  await downloadFile(url, savePath);
}
