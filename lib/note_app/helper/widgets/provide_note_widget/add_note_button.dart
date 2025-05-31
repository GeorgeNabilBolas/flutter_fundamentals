import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_cubit.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:flutter_fundamentals/store_app/networking/service_locator.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colors[context.watch<ColorSelection>().state]),
      ),
      onPressed: () async {
        NoteModel noteModel = NoteModel();
        noteModel.color = colors[context.read<ColorSelection>().state];

        noteModel.title = getIt<TextEditingController>(instanceName: 'title').text;
        noteModel.subtitle = getIt<TextEditingController>(instanceName: 'content').text;
        context.read<NoteCubit>().addNote(noteModel);
        getIt<TextEditingController>(instanceName: 'title').clear();
        getIt<TextEditingController>(instanceName: 'content').clear();
        Navigator.pop(context);
      },
      child: const Text(
        'Add note',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
