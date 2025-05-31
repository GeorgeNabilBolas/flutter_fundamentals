import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
    required this.subtitle,
  });
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: Text(
        subtitle,
        softWrap: false,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
          color: kDefaultColor,
        ),
      ),
    );
  }
}
