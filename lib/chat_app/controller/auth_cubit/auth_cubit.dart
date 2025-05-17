import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamentals/chat_app/controller/toggel_auth_cubit.dart';
import 'package:flutter_fundamentals/chat_app/helper/routs.dart';
import 'package:flutter_fundamentals/chat_app/widgets/chat_screen/chat_screen.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signMethod(BuildContext context, String signOption) async {
    if (signOption == 'sign_in') {
      emit(AuthLoading());
      await _signInMethod(context);
    } else if (signOption == 'sign_up') {
      emit(AuthLoading());
      await _signUpMethod(context);
    }
  }

  Future<void> _signInMethod(BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: context.read<ToggelAuthCubit>().emailController.text,
        password: context.read<ToggelAuthCubit>().passwordController.text,
      );
      Navigator.of(context).pushNamed(ChatAppRouts.chatScreen,
          arguments: context.read<ToggelAuthCubit>().emailController.text);
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      emit(AuthError(message: 'Something went wrong.'));
      if (e.code == 'user-not-found') {
        _showMessage(context, 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        _showMessage(context, 'Wrong password provided for that user.');
      } else {
        _showMessage(context, 'Something went wrong.:\n $e');
      }
    } catch (e) {
      emit(AuthError(message: 'Something went wrong.'));
      _showMessage(context, 'Something went wrong.:\n $e');
    }
  }

  Future<void> _signUpMethod(BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: context.read<ToggelAuthCubit>().emailController.text,
        password: context.read<ToggelAuthCubit>().passwordController.text,
      );
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _showMessage(context, 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        _showMessage(context, 'The account already exists for that email.');
      }
      emit(AuthError(message: 'Something went wrong.'));
    } catch (e) {
      _showMessage(context, 'Something went wrong.:\n $e');
      emit(AuthError(message: 'Something went wrong.'));
    }
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
