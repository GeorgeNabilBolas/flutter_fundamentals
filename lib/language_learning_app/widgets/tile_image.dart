import 'package:flutter/material.dart';

class TileImage extends StatelessWidget {
  const TileImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.orange.shade50,
      child: Image.asset(
        image,
        width: 70,
      ),
    );
  }
}
