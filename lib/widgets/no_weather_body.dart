import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_screen.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen(),));
          },
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'there is no weather 😔 start',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                'searching now 🔍',
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
