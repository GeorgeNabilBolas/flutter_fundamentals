import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class ChatBuubleModel {
  final String message;
  final DateTime timeStamp;
  final String senderId;
  const ChatBuubleModel({
    required this.senderId,
    required this.message,
    required this.timeStamp,
  });
  factory ChatBuubleModel.fromJson(jsonData) {
    return ChatBuubleModel(
      senderId: jsonData[kSenderId],
      message: jsonData[kMessages],
      timeStamp: (jsonData[kTimeStamp] as Timestamp).toDate(),
    );
  }
}
