import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AuthEvent {}

class AuthLoginEvent extends AuthEvent {
  final String email;
  final String password;
  final String? name;

  AuthLoginEvent({
    required this.email,
    required this.password,
    this.name,
  });
}

class AuthLogoutEvent extends AuthEvent {}

abstract class AuthState {
  const AuthState();
}

class AuthInitialState extends AuthState {
  const AuthInitialState();
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState();
}

class AuthenticatedState extends AuthState {
  final String user;

  const AuthenticatedState(this.user);
}

class UnauthenticatedState extends AuthState {
  const UnauthenticatedState();
}

class AuthErrorState extends AuthState {
  final String error;

  const AuthErrorState(this.error);
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState()) {
    on<AuthLoginEvent>(_onLogin);
    on<AuthLogoutEvent>(_onLogout);
  }

  Future<void> _onLogin(AuthLoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Simple validation for demo
    if (event.email.contains('@') && event.password.length >= 6) {
      emit(AuthenticatedState(event.email));
    } else {
      emit(const AuthErrorState('Invalid email or password'));
    }
  }

  Future<void> _onLogout(AuthLogoutEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoadingState());
    // Simulate logout delay
    await Future.delayed(const Duration(milliseconds: 500));
    emit(const UnauthenticatedState());
  }
}