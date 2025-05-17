import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class AddMessageIcon extends StatelessWidget {
  const AddMessageIcon({
    super.key,
    required this.scrollController,
    required this.messagesStream,
    required this.messageController,
    required this.email,
  });

  final ScrollController scrollController;
  final CollectionReference<Object?> messagesStream;
  final TextEditingController messageController;
  final String email;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        messagesStream.add({
          kMessages: messageController.text,
          kTimeStamp: DateTime.now(),
          kSenderId: email,
        });

        messageController.clear();
      },
      icon: const Icon(Icons.send),
    );
  }
}
