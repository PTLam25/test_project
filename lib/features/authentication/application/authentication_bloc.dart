import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../domain/authentication_failures/authentication_failures.dart';
import '../domain/i_authentication_service.dart';
import '../domain/user/user.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

@singleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService authenticationService;

  AuthenticationBloc(this.authenticationService)
      : super(const AuthenticationState.initial()) {
    on<CheckAuthenticationStatus>(_onCheckAuthenticationStatus);
    on<Logout>(_onLogout);
    on<SignIn>(_onSignIn);
    on<SignUp>(_onSignUp);
  }

  FutureOr<void> _onCheckAuthenticationStatus(
    CheckAuthenticationStatus event,
    Emitter<AuthenticationState> emit,
  ) async {
    final result = await authenticationService.getCurrentUser();

    final newState = result.fold(
      (failure) => failure.maybeWhen(
        unauthorized: (isRegistered) => AuthenticationState.unauthenticated(
          failure: failure,
          isRegistered: isRegistered,
        ),
        orElse: () => AuthenticationState.unauthenticated(
          failure: failure,
        ),
      ),
      (user) => AuthenticationState.authenticated(user),
    );

    emit(newState);
  }

  FutureOr<void> _onLogout(
    Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    await authenticationService.logout();

    emit(
      const AuthenticationState.unauthenticated(
        failure: AuthenticationFailures.unauthorized(isRegistered: false),
        isRegistered: true,
      ),
    );
  }

  FutureOr<void> _onSignIn(
    SignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    final result = await authenticationService.signIn(
      phoneNumber: event.phoneNumber,
      password: event.password,
    );

    final newState = result.fold(
      (failure) => AuthenticationState.unauthenticated(
        failure: failure,
        isRegistered: true,
      ),
      (user) => AuthenticationState.authenticated(user),
    );

    emit(newState);
  }

  FutureOr<void> _onSignUp(
    SignUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    final result = await authenticationService.signUp(
      phoneNumber: event.phoneNumber,
      password: event.password,
    );

    final newState = result.fold(
      (failure) => AuthenticationState.unauthenticated(
        failure: failure,
      ),
      (user) => AuthenticationState.authenticated(user),
    );

    emit(newState);
  }
}
