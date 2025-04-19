import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/language_learning_app/models/tile_model.dart';
import 'package:flutter_fundamentals/language_learning_app/models/toku_app_routes.dart';
import 'package:flutter_fundamentals/language_learning_app/widgets/appbar_widget.dart';

List<MainTileModel> mainTileModel = [
  MainTileModel(
    title: TokuAppRouts.numbers,
    color: Colors.orange,
  ),
  MainTileModel(
    title: TokuAppRouts.familyMembers,
    color: Colors.green.shade800,
  ),
  MainTileModel(
    title: TokuAppRouts.colors,
    color: Colors.deepPurple,
  ),
  MainTileModel(
    title: TokuAppRouts.phrases,
    color: Colors.cyan,
  ),
];

class LanguageLearningWidget extends StatelessWidget {
  const LanguageLearningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'TOKU'),
      body: Center(
        child: ListView.builder(
          itemCount: mainTileModel.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => Navigator.of(context).pushNamed(mainTileModel[index].title),
              titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
              tileColor: mainTileModel[index].color,
              title: Text(mainTileModel[index].title),
            );
          },
        ),
      ),
    );
  }
}
