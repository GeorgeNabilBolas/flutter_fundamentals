import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class ChatAppAuthImage extends StatelessWidget {
  const ChatAppAuthImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(kMainAppImage),
      width: 100,
      height: 100,
    );
  }
}
