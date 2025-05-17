import 'package:flutter/material.dart';

import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_appbar.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ChatScreenAppBar(),
      body: ChatScreenBody(),
    );
  }
}
