import 'package:flutter/material.dart';

class WeatherTheme {
  static MaterialColor changeColor(String weatherType) {
    switch (weatherType) {
      case 'Sunny':
        return Colors.yellow;
      case 'Clear':
        return Colors.amber;
      case 'Partly Cloudy':
      case 'Light rain':
        return Colors.indigo;
      case 'Cloudy':
        return Colors.grey;
      case 'Overcast':
        return Colors.red;
      case 'Mist':
        return Colors.teal;
      case 'Patchy Rain Possible':
        return Colors.lime;
      default:
        return Colors.blue;
    }
  }
}

enum WeatherType {
  sunny(name: 'Sunny', color: Colors.yellow),
  clear(name: 'Clear', color: Colors.amber),
  partlyCloudy(name: 'Partly Cloudy', color: Colors.indigo),
  cloudy(name: 'Cloudy', color: Colors.grey),
  overcast(name: 'Overcast', color: Colors.cyan),
  mist(name: 'Mist', color: Colors.teal),
  patchyRainPossible(name: 'Patchy Rain Possible', color: Colors.lime),
  other(name: 'Other', color: Colors.blue);

  const WeatherType({required this.name, required this.color});
  final String name;
  final MaterialColor color;
}
