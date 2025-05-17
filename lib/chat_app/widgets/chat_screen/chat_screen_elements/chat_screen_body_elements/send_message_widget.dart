import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_body_elements/add_message_icon.dart';

class SendMessagesWidget extends StatelessWidget {
  const SendMessagesWidget({
    super.key,
    required this.scrollController,
    required this.messagesStream,
    required this.email,
  });

  final ScrollController scrollController;
  final CollectionReference<Object?> messagesStream;
  final String email;

  @override
  Widget build(BuildContext context) {
    final TextEditingController messageController = TextEditingController();

    return Container(
      constraints: const BoxConstraints(maxHeight: 200),
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: null,
        onTapUpOutside: (event) => FocusScope.of(context).requestFocus(FocusNode()),
        keyboardType: TextInputType.multiline,
        controller: messageController,
        cursorColor: const Color(kPrimaryColor),
        decoration: InputDecoration(
          focusedBorder: borderDecoration(),
          suffixIconColor: const Color(kPrimaryColor),
          suffixIcon: AddMessageIcon(
            scrollController: scrollController,
            messagesStream: messagesStream,
            messageController: messageController,
            email: email,
          ),
          hintText: "Type a message",
          border: borderDecoration(),
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(kPrimaryColor),
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
  }
}
