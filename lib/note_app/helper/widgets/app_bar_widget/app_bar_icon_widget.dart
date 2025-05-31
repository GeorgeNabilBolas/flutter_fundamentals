import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/constants.dart';

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          kDefaultColor.withValues(alpha: 0.2),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultRadius),
          ),
        ),
      ),
      icon: Icon(icon),
      onPressed: () {},
    );
  }
}
