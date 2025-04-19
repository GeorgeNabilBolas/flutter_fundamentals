import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/tunes_player_app/models/tune_model.dart';

class TunesPlayerAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TunesPlayerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueGrey.shade900,
      title: const Text('Tunes Player'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
