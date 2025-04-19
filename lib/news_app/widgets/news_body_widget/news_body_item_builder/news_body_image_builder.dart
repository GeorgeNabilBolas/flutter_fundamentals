import 'package:flutter/material.dart';

class NewsBodyImageBuilder extends StatelessWidget {
  const NewsBodyImageBuilder({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: image == 'lib/news_app/images/notfound.png'
              ? const AssetImage('lib/news_app/images/notfound.png')
              : NetworkImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
