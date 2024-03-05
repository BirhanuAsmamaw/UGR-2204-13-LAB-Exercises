import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  final String apiKey = 'your_api_key'; // Replace 'your_api_key' with your actual API key
  final String city = 'New York'; // Specify the city for which you want to fetch weather data

  final String apiUrl =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  try {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final double temperature = jsonData['main']['temp'];
      final String weatherDescription = jsonData['weather'][0]['description'];

      print('Current temperature in $city: $temperature°C');
      print('Weather conditions: $weatherDescription');
    } else {
      print('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  fetchWeatherData();
}
