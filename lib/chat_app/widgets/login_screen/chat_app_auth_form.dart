import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/auth_cubit/auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/email_validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/password.validator.dart';
import 'package:flutter_fundamentals/chat_app/widgets/login_screen/chat_app_auth_form_elements.dart/auth_form_button.dart';
import 'package:flutter_fundamentals/chat_app/widgets/login_screen/chat_app_auth_form_elements.dart/auth_form_title.dart';
import 'package:flutter_fundamentals/chat_app/widgets/login_screen/chat_app_auth_form_elements.dart/auth_form_validation.dart';
import 'package:flutter_fundamentals/chat_app/widgets/login_screen/chat_app_auth_form_elements.dart/auth_toggel_sign.dart';

class ChatAppAuthForm extends StatelessWidget {
  const ChatAppAuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggelAuthCubit, bool>(
      builder: (context, toggelAuthState) {
        return Form(
          key: context.read<ToggelAuthCubit>().formKey,
          child: Column(
            spacing: 16,
            children: [
              AuthFormTitle(title: toggelAuthState ? 'Sign Up' : 'Sign In'),
              Column(
                spacing: 8,
                children: [
                  AuthFormValidation(
                    title: 'Email',
                    controller: context.read<ToggelAuthCubit>().emailController,
                    validator: context.read<ToggelAuthCubit>().validateEmail,
                  ),
                  AuthFormValidation(
                    title: 'Password',
                    controller: context.read<ToggelAuthCubit>().passwordController,
                    validator: context.read<ToggelAuthCubit>().validatePassword,
                  ),
                  if (toggelAuthState)
                    AuthFormValidation(
                      title: 'Confirm Password',
                      controller: context.read<ToggelAuthCubit>().confirmPasswordController,
                      validator: context.read<ToggelAuthCubit>().validateConfirmPassword,
                    ),
                ],
              ),
              Column(
                children: [
                  BlocProvider(
                    create: (context) => AuthCubit(),
                    child: AuthFormButton(
                      title: toggelAuthState ? 'Sign Up' : 'Sign In',
                    ),
                  ),
                  AuthToggelSign(authTitle: toggelAuthState ? 'Sign Up' : 'Sign In'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
