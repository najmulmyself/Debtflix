import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user.dart';
import '../../../auth/domain/usecases/login_usecase.dart';
import '../../../auth/domain/usecases/logout_usecase.dart';
import '../../../auth/domain/failures/auth_failure.dart';
import '../../../../core/errors/failures.dart';

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
  const factory AuthState.error({required Failure failure}) = _Error;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc({
    required LoginUseCase loginUseCase,
    required LogoutUseCase logoutUseCase,
  })  : _loginUseCase = loginUseCase,
        _logoutUseCase = logoutUseCase,
        super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case _Login(:final email, :final password, :final name):
          emit(const AuthState.loading());

          try {
            final result = await _loginUseCase(email, password);
            result.fold(
              (failure) {
                final convertedFailure = Failure.databaseError(failure.message);
                emit(AuthState.error(failure: convertedFailure));
              },
              (user) => emit(AuthState.authenticated(user)),
            );
          } catch (e) {
            emit(AuthState.error(failure: Failure.serverError(e.toString())));
          }

        case _Logout():
          try {
            final result = await _logoutUseCase();
            result.fold(
              (failure) {
                final convertedFailure = Failure.databaseError(failure.message);
                emit(AuthState.error(failure: convertedFailure));
              },
              (_) => emit(const AuthState.unauthenticated()),
            );
          } catch (e) {
            emit(AuthState.error(failure: Failure.serverError(e.toString())));
          }

        default:
          emit(const AuthState.unauthenticated());
      }
    });
  }


  @override
  String toString() => 'AuthBloc';
}