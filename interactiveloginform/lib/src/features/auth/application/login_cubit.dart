// In lib/src/features/auth/application/login_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      // Simula una llamada de red
      await Future.delayed(const Duration(seconds: 2));

      if (email == 'test@test.com' && password == '123456') {
        emit(const LoginSuccess('Login successful! Welcome.'));
      } else {
        emit(const LoginError('Invalid credentials. Please try again.'));
      }
    } catch (e) {
      emit(LoginError('An unexpected error occurred: ${e.toString()}'));
    }
  }
}
