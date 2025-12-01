import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/usecases/login_usecase.dart';
import '../../../domain/usecases/logout_usecase.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
    String? name,
  }) = _Login;

  const factory AuthEvent.logout() = _Logout;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated(User user) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.error({
    required String failure,
  }) = _Error;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc({
    required this._loginUseCase,
    required this._logoutUseCase,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case AuthEvent.login(email: _, password: _, name: _):
          emit(const AuthState.loading());
          try {
            final result = await _loginUseCase(
              email: event.email,
              password: event.password,
            );
            result.fold(
              (user) => emit(AuthState.authenticated(user)),
              (failure) => emit(AuthState.error(failure: failure)),
            );
          } catch (e) {
            emit(AuthState.error(failure: e.toString()));
          }
          break;

        case AuthEvent.logout():
          try {
            final result = await _logoutUseCase();
            result.fold(
              (_) => emit(const AuthState.unauthenticated()),
              (failure) => emit(AuthState.error(failure: failure)),
            );
          } catch (e) {
            emit(AuthState.error(failure: e.toString()));
          }
          break;
      }
    });
  }
}