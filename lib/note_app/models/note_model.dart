import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
part 'note_model.g.dart';

@GenerateAdapters([
  AdapterSpec<NoteModel>(),
])
class NoteModel extends HiveObject {
  String? title;
  String? subtitle;
  Color? color;
  String dateTime = DateTime.now().toString().substring(0, 4);
  NoteModel({this.title, this.subtitle, this.color});
}
