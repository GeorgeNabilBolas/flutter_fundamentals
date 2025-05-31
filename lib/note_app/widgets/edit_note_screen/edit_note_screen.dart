import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/app_bar_widget/app_bar_widget.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: CustomScrollView(
          slivers: [
            AppBarWidget(title: 'Edit note', icon: Icons.edit),
          ],
        ),
      ),
    );
  }
}
