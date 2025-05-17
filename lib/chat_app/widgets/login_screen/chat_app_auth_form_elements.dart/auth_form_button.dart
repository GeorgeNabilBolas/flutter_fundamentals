import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/auth_cubit/auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class AuthFormButton extends StatelessWidget {
  const AuthFormButton({
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
            await context.read<AuthCubit>().signMethod(context, 'sign_up');
          } else if (!context.read<ToggelAuthCubit>().state) {
            await context.read<AuthCubit>().signMethod(context, 'sign_in');
          }
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return (state is AuthLoading)
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  style: const TextStyle(
                    color: Color(kPrimaryColor),
                  ),
                );
        },
      ),
    );
  }
}
