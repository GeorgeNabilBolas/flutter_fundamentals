import 'package:flutter/material.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StoreAppBar(),
      body: StoreAppBody(),
    );
  }
}

class StoreAppBody extends StatelessWidget {
  const StoreAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Store App Body',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: const Text(
        'Store App',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
