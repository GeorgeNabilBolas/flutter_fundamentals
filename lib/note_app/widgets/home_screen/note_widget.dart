import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget/note_date_time.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget/note_delete_icon.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget/note_subtitle.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget/note_title.dart';

class NoteWidget extends StatelessWidget {
  const NoteWidget({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NoteTitle(title: noteModel.title ?? 'Title'),
            NoteDeleteIcon(noteModel: noteModel)
          ],
        ),
        SubTitle(subtitle: noteModel.subtitle ?? 'No Data'),
        Align(alignment: Alignment.centerRight, child: NoteDateTime(date: noteModel.dateTime)),
      ],
    );
  }
}
