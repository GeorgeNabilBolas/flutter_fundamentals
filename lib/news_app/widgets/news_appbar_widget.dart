import 'package:flutter/material.dart';

class NewsAppbarWidget extends StatelessWidget {
  const NewsAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      centerTitle: true,
      title: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'News',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'Cloud',
              style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
