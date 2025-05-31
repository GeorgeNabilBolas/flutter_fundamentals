import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void noteSetupDependinces() {
  getIt.registerFactory<ColorSelection>(() => ColorSelection());
  // getIt.registerSingleton<NoteModel>(NoteModel(color: Colors.red, title: 'title'));
  getIt.registerSingleton<TextEditingController>(TextEditingController(), instanceName: 'title');
  getIt.registerSingleton<TextEditingController>(TextEditingController(), instanceName: 'content');
}
