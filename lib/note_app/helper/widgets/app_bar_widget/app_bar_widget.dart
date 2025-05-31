import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/note_app/helper/widgets/app_bar_widget/app_bar_icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      scrolledUnderElevation: 0,
      titleSpacing: 0,
      pinned: true,
      title: Text(title, style: const TextStyle(fontSize: 26)),
      actions: [
        AppBarIconWidget(icon: icon),
      ],
    );
  }
}
