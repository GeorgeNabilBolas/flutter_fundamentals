import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_state.dart';
import 'package:flutter_fundamentals/weather_app/models/weather_model.dart';
import 'package:flutter_fundamentals/weather_app/services/weather_service.dart';
import 'package:flutter_fundamentals/weather_app/services/weather_theme.dart';

class GetWeatherBloc extends Cubit<GetWeatherState> {
  GetWeatherBloc() : super(GetWeatherInitialState());
  late WeatherModel weatherModel;
  MaterialColor themeColor = Colors.blue;
  void getWeather({required String cityName}) async {
    emit(GetWeatherLoadingState());
    try {
      weatherModel = await WeatherService(dio: Dio()).fetchWeather(city: cityName);
      themeColor = WeatherTheme.changeColor(weatherModel.condition.text);
      emit(GetWeatherSuccessState(weather: weatherModel));
    } catch (e) {
      themeColor = Colors.blue;
      emit(GetWeatherErrorState(message: e.toString()));
    }
  }
}
