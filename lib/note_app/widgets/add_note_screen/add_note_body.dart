import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/provide_note_widget/add_note_button.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/provide_note_widget/custom_text_field.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/provide_note_widget/generate_colors_list.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';

class AddNoteBody extends StatelessWidget {
  const AddNoteBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWidget(title: 'Add note', icon: Icons.check),
          SliverToBoxAdapter(
            child: CustomTextField(hintText: 'Title'),
          ),
          SliverPadding(padding: EdgeInsetsGeometry.symmetric(vertical: kDefaultPadding / 2)),
          SliverToBoxAdapter(
            child: CustomTextField(hintText: 'Content', maxLines: 5),
          ),
          SliverPadding(padding: EdgeInsetsGeometry.symmetric(vertical: kDefaultPadding / 2)),
          SliverToBoxAdapter(
            child: SizedBox(height: 70, child: GenerateColorsList()),
          ),
          SliverPadding(padding: EdgeInsetsGeometry.symmetric(vertical: kDefaultPadding / 2)),
          SliverToBoxAdapter(child: AddNoteButton())
        ],
      ),
    );
  }
}
