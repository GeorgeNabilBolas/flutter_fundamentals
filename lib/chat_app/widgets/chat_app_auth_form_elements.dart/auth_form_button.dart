import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthFormButton extends StatelessWidget {
  AuthFormButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: WidgetStatePropertyAll(
          Size(double.maxFinite, 50),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      onPressed: () async {
        if (context.read<ToggelAuthCubit>().formKey.currentState!.validate()) {
          if (context.read<ToggelAuthCubit>().state) {
            await signUpMethod(context);
          } else if (!context.read<ToggelAuthCubit>().state) {
            await signInMethod(context);
          }
        }
      },
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0xff2B475E),
        ),
      ),
    );
  }
}
