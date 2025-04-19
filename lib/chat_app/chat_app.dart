import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_form.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_image.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_title.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggelAuthCubit(),
      child: Scaffold(
          backgroundColor: const Color(0xff2B475E),
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: false,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ChatAppAuthImage(),
                      const ChatAppAuthTitle(),
                      const ChatAppAuthForm(),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
