import 'package:flutter_fundamentals/weather_app/models/weather_model.dart';

abstract class GetWeatherState {}

class GetWeatherInitialState extends GetWeatherState {}

class GetWeatherLoadingState extends GetWeatherState {}

class GetWeatherErrorState extends GetWeatherState {
  final String message;

  GetWeatherErrorState({required this.message});
}

class GetWeatherSuccessState extends GetWeatherState {
  final WeatherModel weather;

  GetWeatherSuccessState({required this.weather});
}
