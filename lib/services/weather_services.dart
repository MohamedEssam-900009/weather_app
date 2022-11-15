import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '509947def5c645b9b1b230652220411&q';

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
      '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
    );

    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);

    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}
