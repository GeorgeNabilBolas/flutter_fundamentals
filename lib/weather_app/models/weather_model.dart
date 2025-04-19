class WeatherModel {
  final String name;
  final WeatherModelCondition condition;
  final double temperature;
  final double maxTemp;
  final double minTemp;
  final DateTime lastUpdated;

  WeatherModel({
    required this.name,
    required this.condition,
    required this.temperature,
    required this.maxTemp,
    required this.minTemp,
    required this.lastUpdated,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      lastUpdated: DateTime.parse(json['current']['last_updated']) ?? DateTime.now(),
      name: json['location']['name'] ?? 'Unknown',
      condition: WeatherModelCondition(
        text: json['current']['condition']['text'] ?? 'Unknown',
        icon: json['current']['condition']['icon'] ?? 'lib/weather_app/images/unknown.png',
      ),
      temperature: json['current']['temp_c'] ?? 0.0,
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'] ?? 0.0,
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'] ?? 0.0,
    );
  }
  @override
  String toString() {
    return 'WeatherModel(name: $name, condition: $condition, temperature: $temperature, maxTemp: $maxTemp, minTemp: $minTemp)';
  }
}

class WeatherModelCondition {
  final String text;
  final String icon;

  WeatherModelCondition({required this.text, required this.icon});
}
