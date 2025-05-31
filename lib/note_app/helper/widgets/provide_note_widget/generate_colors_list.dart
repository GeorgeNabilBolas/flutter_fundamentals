import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';
import 'package:flutter_fundamentals/note_app/helper/services/setup_dependinces.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/provide_note_widget/color_widget.dart';

class GenerateColorsList extends StatelessWidget {
  const GenerateColorsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(width: kDefaultPadding / 2),
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return ColorWidget(index: index);
      },
    );
  }
}
