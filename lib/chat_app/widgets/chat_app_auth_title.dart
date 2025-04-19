import 'package:flutter/material.dart';

class ChatAppAuthTitle extends StatelessWidget {
  const ChatAppAuthTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Scholar Chat',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Pacifico',
        fontSize: 24,
      ),
    );
  }
}
