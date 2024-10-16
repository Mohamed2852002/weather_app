import 'package:flutter/widgets.dart';

class WeatherFailureScreen extends StatelessWidget {
  const WeatherFailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Weather Failure',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
