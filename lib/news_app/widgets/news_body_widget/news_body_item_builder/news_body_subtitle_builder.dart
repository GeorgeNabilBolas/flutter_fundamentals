import 'package:flutter/material.dart';

class NewsBodySubtitleBuilder extends StatelessWidget {
  const NewsBodySubtitleBuilder({
    super.key,
    required this.subtitle,
  });
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      maxLines: 2,
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        color: Colors.black54,
        fontSize: 10,
      ),
    );
  }
}
