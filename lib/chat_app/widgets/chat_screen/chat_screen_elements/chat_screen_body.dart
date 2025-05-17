import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_body_elements/send_message_widget.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen_elements/chat_screen_body_elements/show_message_widget.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String email = ModalRoute.of(context)!.settings.arguments as String;
    final ScrollController scrollController = ScrollController();
    final CollectionReference messagesStream =
        FirebaseFirestore.instance.collection(kMessagesCollection);
    return StreamBuilder<QuerySnapshot>(
        stream: messagesStream.orderBy(kTimeStamp, descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshotCheck(snapshot)) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ShowMessagesWidget(
                  scrollController: scrollController,
                  email: email,
                  snapshot: snapshot,
                ),
              ),
              SendMessagesWidget(
                scrollController: scrollController,
                messagesStream: messagesStream,
                email: email,
              ),
            ],
          );
        });
  }

  bool snapshotCheck(AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
    return snapshot.connectionState == ConnectionState.waiting ||
        snapshot.hasError ||
        !snapshot.hasData;
  }
}
