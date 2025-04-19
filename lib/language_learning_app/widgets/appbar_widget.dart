import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.brown,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
