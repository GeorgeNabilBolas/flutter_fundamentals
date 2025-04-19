import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/chat_app/helper/email_validator.dart';
import 'package:flutter_fundamentals/chat_app/helper/password.validator.dart';

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
        errorStyle: const TextStyle(color: Color(0xffC7EDE6)),
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
