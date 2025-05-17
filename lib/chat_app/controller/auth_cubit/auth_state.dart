part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthError extends AuthState {
  final String message;
  AuthError({required this.message});
  @override
  String toString() {
    // TODO: implement toString
    return 'AuthError(message: $message)';
  }
}
