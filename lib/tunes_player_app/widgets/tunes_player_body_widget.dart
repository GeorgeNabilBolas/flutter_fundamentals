import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/tunes_player_app/models/tune_model.dart';

class TunesPlayerBodyWidget extends StatelessWidget {
  const TunesPlayerBodyWidget({
    super.key,
    required this.index,
    required this.height,
  });
  final int index;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: playSound,
      child: ColoredBox(
        color: tunes[index].color,
        child: SizedBox(height: height),
      ),
    );
  }

  void playSound() async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(AssetSource(tunes[index].sound));
  }
}
