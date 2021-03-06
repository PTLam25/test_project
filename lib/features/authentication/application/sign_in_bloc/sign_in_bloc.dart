import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/authentication_failures/authentication_failures.dart';
import '../../domain/i_authentication_service.dart';
import '../../domain/user/user.dart';

part 'sign_in_bloc.freezed.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthenticationService authenticationService;

  SignInBloc(this.authenticationService) : super(SignInState.initial()) {
    on<PasswordChanged>(_onPasswordChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<SignInPressed>(_onSignInPressed);
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
        failureOrUser: none(),
      ),
    );
  }

  FutureOr<void> _onPhoneNumberChanged(
    PhoneNumberChanged event,
    Emitter<SignInState> emit,
  ) {
    emit(
      state.copyWith(
        phoneNumber: event.phoneNumber,
        failureOrUser: none(),
      ),
    );
  }

  Future<void> _onSignInPressed(
    SignInPressed event,
    Emitter<SignInState> emit,
  ) async {
    Either<AuthenticationFailures, User>? failureOrUser;

    emit(
      state.copyWith(
        failureOrUser: none(),
      ),
    );

    failureOrUser = await authenticationService.signIn(
      phoneNumber: state.phoneNumber,
      password: state.password,
    );

    emit(state.copyWith(
      failureOrUser: optionOf(failureOrUser),
    ));
  }
}
