import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/note_app_routes.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_cubit.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_state.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class NoteBuilder extends StatelessWidget {
  const NoteBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        final notes = context.read<NoteCubit>().getNotes();
        return SliverList.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: notes[index].color,
                borderRadius: BorderRadius.circular(kDefaultRadius),
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                  NoteAppRoutes.editNote,
                ),
                child: NoteWidget(noteModel: notes[index]),
              ),
            );
          },
        );
      },
    );
  }
}
