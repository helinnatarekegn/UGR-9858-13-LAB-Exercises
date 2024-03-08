import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String city) async {
  final apiKey = '1d2daedaec45cb2f8427cdf340397356';
  final apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}

void main() async {
  final city = 'New York';

  try {
    final weatherData = await fetchWeatherData(city);
    final temperature = (weatherData['main']['temp'] - 273.15).toStringAsFixed(1); 
    final weatherCondition = weatherData['weather'][0]['description'];

    print('Current temperature in $city: $temperature°C');
    print('Weather condition: $weatherCondition');
  } catch (e) {
    print('Error: $e');
  }
}
