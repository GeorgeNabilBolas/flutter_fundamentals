import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/model/chat_buuble_design_model.dart';

class ChatBubbleWidget extends StatelessWidget {
  const ChatBubbleWidget({
    required this.chatBuubleDesignModel,
    super.key,
  });
  final ChatBuubleDesignModel chatBuubleDesignModel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: chatBuubleDesignModel.direction,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          borderRadius: chatBuubleDesignModel.borderRadius,
          color: chatBuubleDesignModel.color,
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Text(
          textAlign: TextAlign.start,
          chatBuubleDesignModel.message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
