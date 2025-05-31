import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_cubit.dart';
import 'package:flutter_fundamentals/note_app/widgets/add_note_screen/add_note_icon_widget.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_builder.dart';
import 'package:flutter_fundamentals/note_app/widgets/home_screen/note_widget.dart';

import 'helper/widgets/app_bar_widget/app_bar_widget.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: AddNoteIconWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: CustomScrollView(
          slivers: [
            AppBarWidget(icon: Icons.search, title: 'Notes'),
            NoteBuilder(),
          ],
        ),
      ),
    );
  }
}
