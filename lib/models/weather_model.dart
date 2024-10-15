class WeatherModel {
  final double avgTemp;
  final double minTemp;
  final double maxTemp;
  final String cityName;
  final String condition;
  final String time;
  final String? errorMessage;

  const WeatherModel({
    required this.avgTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.time,
    required this.condition,
    required this.cityName,
    this.errorMessage
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        avgTemp: json["current"]["temp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        time: json["location"]["localtime"],
        cityName: json["location"]["name"],
        condition: json["current"]["condition"]["text"]);
  }
}
