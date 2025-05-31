import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';
import 'package:flutter_fundamentals/note_app/helper/services/note_cubit/note_cubit.dart';
import 'package:flutter_fundamentals/note_app/helper/services/setup_dependinces.dart';
import 'package:flutter_fundamentals/note_app/models/note_model.dart';
import 'package:hive_ce/hive.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines,
    this.styleColor,
  });
  final String hintText;
  final int? maxLines;
  final Color? styleColor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: hintText == 'Title'
          ? getIt<TextEditingController>(instanceName: 'title')
          : getIt<TextEditingController>(instanceName: 'content'),
      cursorColor: styleColor ?? colors[context.watch<ColorSelection>().state],
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(kDefaultRadius)),
          borderSide: BorderSide(color: kDefaultColor.withValues(alpha: 0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(kDefaultRadius)),
          borderSide:
              BorderSide(color: styleColor ?? colors[context.watch<ColorSelection>().state]),
        ),
      ),
    );
  }
}
