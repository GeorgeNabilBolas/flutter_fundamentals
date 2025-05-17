import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/model/chat_buuble_design_model.dart';
import 'package:flutter_fundamentals/chat_app/model/chat_buuble_model.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_body_elements/chat_bubble_widget.dart';

class ShowMessagesWidget extends StatelessWidget {
  const ShowMessagesWidget({
    super.key,
    required this.scrollController,
    required this.email,
    required this.snapshot,
  });

  final ScrollController scrollController;
  final String email;
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      reverse: true,
      itemCount: snapshot.data!.docs.length,
      itemBuilder: (context, index) {
        return snapshot.data!.docs.map((doc) {
          final chatBubbleModel = ChatBuubleModel.fromJson(doc.data());
          return ChatBubbleWidget(
            chatBuubleDesignModel: ChatBuubleDesignModel(
              message: chatBubbleModel.message,
              isMe: email == chatBubbleModel.senderId,
            ),
          );
        }).toList()[index];
      },
    );
  }
}
