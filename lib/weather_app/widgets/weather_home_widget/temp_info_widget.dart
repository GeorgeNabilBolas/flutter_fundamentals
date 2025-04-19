import 'package:flutter/material.dart';

class TempInfoWidget extends StatelessWidget {
  const TempInfoWidget({
    super.key,
    required this.icon,
    required this.temperature,
    required this.maxTemp,
    required this.minTemp,
  });

  final String icon;
  final double temperature;
  final double maxTemp;
  final double minTemp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon == 'lib/weather_app/images/unknown.png'
            ? Image.asset(icon)
            : Image.network('http:$icon'),
        Text(temperature.toString(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Column(
          children: [
            Text('MaxTemp: ${maxTemp.toString()}'),
            Text('MinTemp: ${minTemp.toString()}'),
          ],
        ),
      ],
    );
  }
}
