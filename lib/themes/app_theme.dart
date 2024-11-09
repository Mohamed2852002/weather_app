import 'package:flutter/material.dart';
import 'package:weather_app/themes/app_colors.dart';

class AppTheme {
  static final sunnyTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.sunnyColor),
    scaffoldBackgroundColor: AppColors.sunnyColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.sunnyColor),
  );
  static final cloudyTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cloudyColor),
    scaffoldBackgroundColor: AppColors.cloudyColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.cloudyColor),
  );
  static final rainyTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.rainyColor),
    scaffoldBackgroundColor: AppColors.rainyColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.rainyColor),
  );
  static final noWeatherTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  );
}
