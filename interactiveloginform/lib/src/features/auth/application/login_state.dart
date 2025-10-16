// In lib/src/features/auth/application/login_state.dart
import 'package:equatable/equatable.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final String message;
  const LoginSuccess(this.message);
}

final class LoginError extends LoginState {
  final String message;
  const LoginError(this.message);
}
