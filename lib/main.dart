import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_fundamentals/basketball_points_counter_app/basketball_points_counter_widget.dart";
import "package:flutter_fundamentals/birthday_card_app/birthday_card_widget.dart";
import "package:flutter_fundamentals/business_card_app/business_card_widget.dart";
import "package:flutter_fundamentals/chat_app/chat_app.dart";
import "package:flutter_fundamentals/chat_app/helper/routs.dart";
import "package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen.dart";
import "package:flutter_fundamentals/language_learning_app/language_learning_widget.dart";
import "package:flutter_fundamentals/language_learning_app/models/tile_model.dart";
import "package:flutter_fundamentals/language_learning_app/models/toku_app_data.dart";
import "package:flutter_fundamentals/language_learning_app/models/toku_app_routes.dart";
import "package:flutter_fundamentals/language_learning_app/widgets/tiles_content_widget.dart";
import "package:flutter_fundamentals/news_app/news_app.dart";
import "package:flutter_fundamentals/news_app/services/news_service.dart";
import "package:flutter_fundamentals/tunes_player_app/tunes_player_widget.dart";
import 'package:dio/dio.dart';
import "package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_bloc.dart";
import "package:flutter_fundamentals/weather_app/controller/get_weather_bloc/get_weather_state.dart";
import "package:flutter_fundamentals/weather_app/models/weather_model.dart";
import "package:flutter_fundamentals/weather_app/weather_app.dart";
import "package:flutter_fundamentals/weather_app/services/weather_service.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      // home: BirthdayCardWidget(),
      // home: BusinessCardWidget(),
      // home: BasketballPointsCounterWidget(),
      // home: const LanguageLearningWidget(),
      // home: const TunesPlayerWidget(),
      // home: const NewsApp(),
      // home: const WeatherApp(),
      home: const ChatApp(),
    );
  }

  Map<String, WidgetBuilder> get routes {
    return {
      ChatAppRouts.chatScreen: (context) => const ChatScreen(),
      TokuAppRouts.numbers: (context) => TilesContentWidget(
            title: TokuAppRouts.numbers,
            tileContent: contentTiles[TokuAppRouts.numbers]!,
          ),
      TokuAppRouts.familyMembers: (context) => TilesContentWidget(
            title: TokuAppRouts.familyMembers,
            tileContent: contentTiles[TokuAppRouts.familyMembers]!,
          ),
      TokuAppRouts.colors: (context) => TilesContentWidget(
            title: TokuAppRouts.colors,
            tileContent: contentTiles[TokuAppRouts.colors]!,
          ),
      TokuAppRouts.phrases: (context) => TilesContentWidget(
            title: TokuAppRouts.phrases,
            tileContent: contentTiles[TokuAppRouts.phrases]!,
          ),
    };
  }
}
