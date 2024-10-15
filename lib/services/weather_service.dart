import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final dio = Dio();

  Future<WeatherModel> getWeather() async {
    final response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=2efccd4204e541debec152404241210&q=Giza&days=1');
    Map<String, dynamic> json = response.data;
    WeatherModel weatherModel = WeatherModel.fromJson(json);
    return weatherModel;
  }
}
