class WeatherModel {
  final double avgTemp;
  final double minTemp;
  final double maxTemp;
  final String cityName;
  final String condition;
  final String icon;
  final DateTime time;

  const WeatherModel(
      {required this.avgTemp,
      required this.minTemp,
      required this.maxTemp,
      required this.time,
      required this.condition,
      required this.cityName,
      required this.icon});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        icon: json["current"]["condition"]['icon'],
        avgTemp: json["current"]["temp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        time: DateTime.parse(json["location"]["localtime"]),
        cityName: json["location"]["name"],
        condition: json["current"]["condition"]["text"]);
  }
}
