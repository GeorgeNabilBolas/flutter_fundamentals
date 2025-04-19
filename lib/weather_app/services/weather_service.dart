import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_fundamentals/weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService({required this.dio});

  Future<WeatherModel> fetchWeather({required String city}) async {
    try {
      final Response response;
      const baseUrl = 'https://api.weatherapi.com/v1/forecast.json';
      const apiKey = '7e3700d7c9424668853110614250903';
      final queryParams = {'key': apiKey, 'q': city};
      response = await dio.get(baseUrl, queryParameters: queryParams);

      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['error']['message'];
    } catch (e) {
      throw 'Errror: $e';
    }
  }
}
