import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';

class AuthToggelSign extends StatelessWidget {
  const AuthToggelSign({
    super.key,
    required this.authTitle,
  });
  final String authTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          authTitle == 'Sign Up' ? 'Already have an account?' : 'Don\'t have an account?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            context.read<ToggelAuthCubit>().toggleAuth();
          },
          child: Text(
            authTitle == 'Sign Up' ? 'Sign In' : 'Sign Up',
            style: TextStyle(
              color: Color(0xffC7EDE6),
            ),
          ),
        ),
      ],
    );
  }
}
