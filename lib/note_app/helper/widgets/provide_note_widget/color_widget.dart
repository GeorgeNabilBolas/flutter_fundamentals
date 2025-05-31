import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';
import 'package:flutter_fundamentals/note_app/helper/services/color_selection.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => BlocProvider.of<ColorSelection>(context).onTap(index),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: context.watch<ColorSelection>().getColor(index),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: colors[index],
          child: const Icon(
            Icons.color_lens,
            color: kDefaultColor,
          ),
        ),
      ),
    );
  }
}
