import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '2efccd4204e541debec152404241210';

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      final response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'No Response';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops, there was an error try later');
    }
  }
}
