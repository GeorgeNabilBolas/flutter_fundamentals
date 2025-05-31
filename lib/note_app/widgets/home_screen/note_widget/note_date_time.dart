import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';

class NoteDateTime extends StatelessWidget {
  const NoteDateTime({
    super.key,
    required this.date,
  });
  final String date;
  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(
        fontSize: 16,
        color: kDefaultColor,
      ),
    );
  }
}
