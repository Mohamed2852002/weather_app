import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/home_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Builder(
          builder: (context) {
            return BlocBuilder<GetWeatherCubit, WeatherState>(
              builder: (context, state) {
                return MaterialApp(
                  theme: ThemeData(
                    primarySwatch: getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
                                .weatherModel
                                ?.condition ??
                            'Clear'),
                    useMaterial3: false,
                  ),
                  debugShowCheckedModeBanner: false,
                  home: const HomeScreen(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
 MaterialColor getThemeColor(String condition) {
    switch (condition) {
      case 'Sunny':
        return Colors.orange;
      case 'Cloudy':
      case 'Overcast':
      case 'Fog':
      case 'Thundery outbreaks possible':
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
      case 'Partly cloudy':
        return Colors.grey;
      case 'Moderate rain at times':
      case 'Patchy rain possible':
      case 'Light rain':
      case 'Light rain shower':
      case 'Clear':
      case 'Moderate rain':
      case 'Moderate or heavy rain shower':
      case 'Mist':
      case 'Patchy light drizzle':
      case 'Patchy light rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Torrential rain shower':
      case 'Patchy snow possible':
      case 'Light snow':
      case 'Patchy light snow':
      case 'Light snow showers':
      case 'Moderate snow':
      case 'Patchy moderate snow':
      case 'Moderate or heavy snow showers':
      case 'Heavy snow':
      case 'Patchy heavy snow':
      case 'Moderate or heavy snow with thunder':
      case 'Freezing drizzle':
      case 'Light freezing rain':
      case 'Patchy freezing drizzle possible':
      case 'Heavy freezing drizzle':
      case 'Moderate or heavy freezing rain':
      case 'Blowing snow':
      case 'Blizzard':
      case 'Ice pellets':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
      case 'Patchy light snow with thunder':
        return Colors.blue;
      default:
        return Colors.blue;
    }
  }
