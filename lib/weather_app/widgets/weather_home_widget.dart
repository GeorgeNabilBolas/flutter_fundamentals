import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/weather_app/models/weather_model.dart';
import 'package:flutter_fundamentals/weather_app/widgets/weather_home_widget/city_info_widget.dart';
import 'package:flutter_fundamentals/weather_app/widgets/weather_home_widget/status_info_widget.dart';
import 'package:flutter_fundamentals/weather_app/widgets/weather_home_widget/temp_info_widget.dart';

class WeatherHomeWidget extends StatelessWidget {
  const WeatherHomeWidget({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CityInfoWidget(
          name: weather.name,
          lastUpdated: weather.lastUpdated,
        ),
        TempInfoWidget(
          icon: weather.condition.icon,
          temperature: weather.temperature,
          maxTemp: weather.maxTemp,
          minTemp: weather.minTemp,
        ),
        StatusInfoWidget(status: weather.condition.text),
      ],
    );
  }
}
