import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/email_validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/password.validator.dart';

class ToggelAuthCubit extends Cubit<bool> {
  ToggelAuthCubit() : super(true);
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Confirm Password';
    } else if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void toggleAuth() {
    passwordController.clear();
    emailController.clear();
    confirmPasswordController.clear();
    formKey.currentState!.reset();
    emit(!state);
  }
}
