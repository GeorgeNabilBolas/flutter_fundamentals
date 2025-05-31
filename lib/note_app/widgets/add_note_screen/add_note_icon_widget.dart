import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/note_app_routes.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';
import 'package:flutter_fundamentals/note_app/helper/services/setup_dependinces.dart';
import 'package:flutter_fundamentals/note_app/widgets/add_note_screen/add_note_body.dart';
import 'package:get_it/get_it.dart';

class AddNoteIconWidget extends StatelessWidget {
  const AddNoteIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'add_note',
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => BlocProvider(
            create: (context) => getIt<ColorSelection>(),
            child: const AddNoteBody(),
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
