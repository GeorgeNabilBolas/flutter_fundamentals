import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/helper/email_validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/password.validator.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_form_elements.dart/auth_form_button.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_form_elements.dart/auth_form_title.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_form_elements.dart/auth_form_validation.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_app_auth_form_elements.dart/auth_toggel_sign.dart';

class ChatAppAuthForm extends StatelessWidget {
  const ChatAppAuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggelAuthCubit, bool>(
      builder: (context, state) {
        return Form(
          key: context.read<ToggelAuthCubit>().formKey,
          child: Column(
            spacing: 16,
            children: [
              AuthFormTitle(title: state ? 'Sign Up' : 'Sign In'),
              Column(
                spacing: 8,
                children: [
                  AuthFormValidation(
                    title: 'Email',
                    controller: context.read<ToggelAuthCubit>().emailController,
                    validator: validateEmail,
                  ),
                  AuthFormValidation(
                    title: 'Password',
                    controller: context.read<ToggelAuthCubit>().passwordController,
                    validator: validatePassword,
                  ),
                  if (state)
                    AuthFormValidation(
                      title: 'Confirm Password',
                      controller: context.read<ToggelAuthCubit>().confirmPasswordController,
                      validator: (value) => validateConfirmPassword(value, context),
                    ),
                ],
              ),
              Column(
                children: [
                  AuthFormButton(
                    title: state ? 'Sign Up' : 'Sign In',
                  ),
                  AuthToggelSign(authTitle: state ? 'Sign Up' : 'Sign In'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    } else {
      EmailValidationResult result = EmailValidationResult(
        validator: EmailValidatorCheck(),
        email: value,
      );
      return result.message;
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    } else {
      PasswordValidationResult result = PasswordValidationResult(
        validators: [
          PasswordIsLongEnough(),
          PasswordContainsUpperChar(),
          PasswordContainsLowerChar(),
          PasswordContainsNumber(),
          PasswordContainsSpecialChar()
        ],
        password: value,
      );
      return result.message;
    }
  }

  String? validateConfirmPassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Confirm Password';
    } else if (value != context.read<ToggelAuthCubit>().passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }
}
