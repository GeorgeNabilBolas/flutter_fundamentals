import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/language_learning_app/models/tile_model.dart';

class TileContent extends StatelessWidget {
  const TileContent({
    super.key,
    required this.model,
  });
  final ContentTileModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        minTileHeight: 70,
        textColor: Colors.white,
        tileColor: model.color,
        title: Text(model.title),
        subtitle: Text(model.subtitle),
        onTap: playSound,
        trailing: const Icon(Icons.play_arrow, color: Colors.white),
      ),
    );
  }

  void playSound() async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(
      AssetSource(model.sound),
    );
  }
}
