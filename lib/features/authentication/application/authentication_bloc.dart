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

@injectable
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
  ) {
    authenticationService.getCurrentUser().then(
          (result) => result.fold(
            (failure) => null,
            (user) => emit(AuthenticationState.authenticated(user)),
          ),
        );
  }

  FutureOr<void> _onLogout(
    Logout event,
    Emitter<AuthenticationState> emit,
  ) {
    authenticationService.logout().then((_) => emit(
          const AuthenticationState.unauthenticatedNotRegistered(
            AuthenticationFailures.invalidCode(),
          ),
        ));
  }

  FutureOr<void> _onSignIn(
    SignIn event,
    Emitter<AuthenticationState> emit,
  ) {
    authenticationService
        .signIn(
          phoneNumber: event.phoneNumber,
          password: event.password,
        )
        .then(
          (result) => result.fold(
            (failure) => null,
            (user) => emit(AuthenticationState.authenticated(user)),
          ),
        );
  }

  FutureOr<void> _onSignUp(
    SignUp event,
    Emitter<AuthenticationState> emit,
  ) {
    authenticationService
        .signUp(
          phoneNumber: event.phoneNumber,
          password: event.password,
        )
        .then(
          (result) => result.fold(
            (failure) => null,
            (user) => emit(AuthenticationState.authenticated(user)),
          ),
        );
  }
}
