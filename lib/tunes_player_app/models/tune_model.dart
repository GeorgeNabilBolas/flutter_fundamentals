import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel({
    required this.color,
    required this.sound,
  });
}

const List<TuneModel> tunes = [
  TuneModel(color: Colors.red, sound: 'lib/tunes_player_app/sounds/note1.wav'),
  TuneModel(color: Colors.orange, sound: 'lib/tunes_player_app/sounds/note2.wav'),
  TuneModel(color: Colors.yellow, sound: 'lib/tunes_player_app/sounds/note3.wav'),
  TuneModel(color: Colors.green, sound: 'lib/tunes_player_app/sounds/note4.wav'),
  TuneModel(color: Colors.blue, sound: 'lib/tunes_player_app/sounds/note5.wav'),
  TuneModel(color: Colors.indigo, sound: 'lib/tunes_player_app/sounds/note6.wav'),
  TuneModel(color: Colors.purple, sound: 'lib/tunes_player_app/sounds/note7.wav'),
];
