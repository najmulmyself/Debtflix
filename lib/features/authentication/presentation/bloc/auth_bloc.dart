import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final LogoutUseCase _logoutUseCase;

  AuthBloc({
    required this._loginUseCase,
    required this._logoutUseCase,
  }) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      switch (event) {
        case AuthEvent.login((email, password, name)):
          emit(state.copyWith(status: AuthStatus.loading));

          try {
            final result = await _loginUseCase(email, password);
            emit(state.copyWith(
              status: result.fold(
                (user) => AuthState.authenticated(user),
                (failure) => AuthState.error(failure: failure),
              ),
            ));
          } catch (e) {
            emit(state.copyWith(
              status: AuthState.error(failure: e.toString()),
            ));
          }
          break;

        case AuthEvent.logout():
          try {
            final result = await _logoutUseCase();
            emit(state.copyWith(
              status: result.fold(
                (user) => AuthState.unauthenticated,
                (failure) => AuthState.error(failure: failure),
              ),
            ));
          } catch (e) {
            emit(state.copyWith(
              status: AuthState.error(failure: e.toString()),
            ));
          }
          break;

        default:
          emit(const AuthState.unauthenticated());
      }
    }
  }

  @override
  Stream<AuthState> map(AuthEvent event, AuthState emit)>
    (event, emit) => state.map((event) {
      switch (event) {
        case AuthEvent.login((email, password, name)):
          return _mapLoginEventToState(event, state, emit);

        case AuthEvent.logout():
          return _mapLogoutEventToState(event, state, emit);

        default:
          return const AuthState.unauthenticated();
      }
    }
  }

  String toString() => 'AuthBloc';
}