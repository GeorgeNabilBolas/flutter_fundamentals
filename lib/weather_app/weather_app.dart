import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_bloc.dart';
import 'package:flutter_fundamentals/weather_app/controller/searching_bloc/searching_bloc.dart';
import 'package:flutter_fundamentals/weather_app/models/weather_model.dart';
import 'package:flutter_fundamentals/weather_app/services/weather_service.dart';
import 'package:flutter_fundamentals/weather_app/widgets/no_weather_widget.dart';
import 'package:flutter_fundamentals/weather_app/widgets/weather_app_appbar.dart';
import 'package:flutter_fundamentals/weather_app/widgets/weather_home_widget.dart';

import 'controller/get_weather_bloc/get_weather_state.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherBloc(),
      child: BlocProvider(
        create: (context) => SearchingBloc(),
        child: Scaffold(
          appBar: const WeatherAppAppBar(),
          body: Builder(builder: (context) {
            return DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.watch<GetWeatherBloc>().themeColor,
                    context.watch<GetWeatherBloc>().themeColor[300]!,
                    context.watch<GetWeatherBloc>().themeColor[50]!,
                  ],
                ),
              ),
              child: BlocBuilder<GetWeatherBloc, GetWeatherState>(
                builder: (context, state) {
                  if (state is GetWeatherLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is GetWeatherErrorState) {
                    return NoWeatherWidget(message: state.message);
                  } else if (state is GetWeatherSuccessState) {
                    return WeatherHomeWidget(
                      weather: state.weather,
                    );
                  } else {
                    return const NoWeatherWidget();
                  }
                },
              ),
            );
          }),
          // body: FutureBuilder(
          //   future: WeatherService(dio: Dio()).fetchWeather(city: 'Aswan'),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (snapshot.hasError || !snapshot.hasData) {
          //       return NoWeatherWidget(message: snapshot.error.toString());
          //     } else {
          //       return WeatherHomeWidget(
          //         weather: snapshot.data!,
          //       );
          //     }
          //   },
          // ),
        ),
      ),
    );
  }
}
