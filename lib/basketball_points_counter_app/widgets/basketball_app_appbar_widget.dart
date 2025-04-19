import 'package:flutter/material.dart';

class BasketBallAppAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const BasketBallAppAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      shadowColor: Colors.black,
      backgroundColor: Colors.orange,
      title: const Text(
        "Points Counter",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
