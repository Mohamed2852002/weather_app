import 'package:flutter/material.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: const NoWeatherBody(),
    );
  }
}
