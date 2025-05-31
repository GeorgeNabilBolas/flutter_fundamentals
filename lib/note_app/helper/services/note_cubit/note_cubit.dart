import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_state.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(InitNoteState());

  void addNote(NoteModel noteModel) {
    Hive.box<NoteModel>(kNoteBox).add(noteModel);
    emit(AddNoteState());
  }

  List<NoteModel> getNotes() {
    return Hive.box<NoteModel>(kNoteBox).values.toList();
  }

  void deleteNote(NoteModel noteModel) {
    noteModel.delete();
    emit(DeleteNoteState());
  }
}
