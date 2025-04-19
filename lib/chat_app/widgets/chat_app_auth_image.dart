import 'package:flutter/material.dart';

class ChatAppAuthImage extends StatelessWidget {
  const ChatAppAuthImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('lib/chat_app/images/scholar.png'),
      width: 100,
      height: 100,
    );
  }
}
