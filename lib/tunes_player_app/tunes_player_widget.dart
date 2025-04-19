import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/tunes_player_app/models/tune_model.dart';
import 'package:flutter_fundamentals/tunes_player_app/widgets/tunes_player_appbar.dart';
import 'package:flutter_fundamentals/tunes_player_app/widgets/tunes_player_body_widget.dart';

class TunesPlayerWidget extends StatelessWidget {
  const TunesPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TunesPlayerAppbar(),
      body: LayoutBuilder(
        builder: (context, constraints) => ListView.builder(
          itemCount: tunes.length,
          itemBuilder: (context, index) => TunesPlayerBodyWidget(
            index: index,
            height: constraints.maxHeight / tunes.length,
          ),
        ),
      ),
    );
  }
}
