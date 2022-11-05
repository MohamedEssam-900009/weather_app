import 'package:flutter/material.dart';

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
            onSubmitted: (value) {
              cityName = value;
              debugPrint(value);
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
