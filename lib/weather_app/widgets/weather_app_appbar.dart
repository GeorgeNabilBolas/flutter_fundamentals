import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_bloc.dart';
import 'package:flutter_fundamentals/weather_app/controller/searching_bloc/searching_bloc.dart';
import 'package:flutter_fundamentals/weather_app/services/weather_theme.dart';

import 'package:flutter_fundamentals/weather_app/widgets/search_textfield.dart';

class WeatherAppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WeatherAppAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchingBloc, bool>(
      builder: (context, state) {
        return AppBar(
          actions: [
            IconButton(
              icon: state ? const Icon(Icons.close) : const Icon(Icons.search),
              onPressed: () {
                BlocProvider.of<SearchingBloc>(context).onPressed();
              },
            ),
          ],
          foregroundColor: Colors.white,
          backgroundColor: context.watch<GetWeatherBloc>().themeColor,
          title: state ? const SearchTextField() : const Text('Weather App'),
        );
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 9 / 8);
}
