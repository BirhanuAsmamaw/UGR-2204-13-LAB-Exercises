import 'dart:async';
import 'dart:math';

// Simulate a network call to fetch a random quote
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt"
  ];
  return quotes[Random().nextInt(quotes.length)];
}

void main() async {
  // Wait for the quote to be fetched asynchronously
  String quote = await fetchQuote();

  // Print the fetched quote
  print('Fetched Quote: $quote');
}
