import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/main.dart';
import 'package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_bloc.dart'
    show GetWeatherBloc;
import 'package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_state.dart'
    show GetWeatherState;
import 'package:flutter_fundamentals/weather_app/services/weather_theme.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherBloc, GetWeatherState>(
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.text,
          onSubmitted: (value) {
            BlocProvider.of<GetWeatherBloc>(context).getWeather(cityName: value);
          },
          decoration: InputDecoration(
            hintText: 'Search',
            fillColor: Colors.white,
            filled: true,
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        );
      },
    );
  }
}
