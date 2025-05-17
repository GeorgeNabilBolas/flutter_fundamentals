import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class ChatBuubleDesignModel {
  final bool isMe;
  final String message;
  final Color color;
  final BorderRadius borderRadius;
  final Alignment direction;
  const ChatBuubleDesignModel({
    required this.isMe,
    required this.message,
  })  : color = isMe ? const Color(kPrimaryColor) : const Color(kSecondaryColor),
        borderRadius = isMe
            ? const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
        direction = isMe ? Alignment.centerLeft : Alignment.centerRight;
}
