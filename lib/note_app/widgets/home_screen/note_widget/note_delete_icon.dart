import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_cubit.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';

class NoteDeleteIcon extends StatelessWidget {
  const NoteDeleteIcon({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.all(0),
      onPressed: () {
        context.read<NoteCubit>().deleteNote(noteModel);
      },
      icon: const Icon(Icons.delete, color: kDefaultColor, size: 30),
    );
  }
}
