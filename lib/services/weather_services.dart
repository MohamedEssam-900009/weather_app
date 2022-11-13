import 'package:http/http.dart' as http;

class WeatherServices {
  void getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=509947def5c645b9b1b230652220411&q=Egypt&aqi=no');

    http.Response response = await http.get(url);
  }
}
