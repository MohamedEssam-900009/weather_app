import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) async {
              cityName = value;

              WeatherServices services = WeatherServices();

              WeatherModel weather =
                  await services.getWeather(cityName: cityName!);
            },
            decoration: const InputDecoration(
              hintText: 'Enter a city',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
              contentPadding: EdgeInsets.symmetric(
                vertical: 32.0,
                horizontal: 24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
