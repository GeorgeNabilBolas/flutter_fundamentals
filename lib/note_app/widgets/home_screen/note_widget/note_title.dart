import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';

class NoteTitle extends StatelessWidget {
  const NoteTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 24,
          color: kDefaultColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
