import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/email_validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/Validations/password.validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/constants.dart';

class AuthFormValidation extends StatelessWidget {
  const AuthFormValidation({
    super.key,
    required this.title,
    required this.controller,
    required this.validator,
  });
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        errorStyle: const TextStyle(color: Color(kImageColor)),
        hintStyle: const TextStyle(color: Colors.white),
        hintText: 'Enter Your $title',
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
    );
  }
}
