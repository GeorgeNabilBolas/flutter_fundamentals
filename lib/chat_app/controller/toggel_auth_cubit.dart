import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggelAuthCubit extends Cubit<bool> {
  ToggelAuthCubit() : super(true);
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void toggleAuth() {
    passwordController.clear();
    emailController.clear();
    confirmPasswordController.clear();
    formKey.currentState!.reset();
    emit(!state);
  }
}
