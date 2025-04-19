import 'package:flutter/material.dart';

class NewsBodyTitleBuilder extends StatelessWidget {
  const NewsBodyTitleBuilder({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber,
      ),
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
