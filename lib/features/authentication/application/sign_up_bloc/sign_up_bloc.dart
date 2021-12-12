import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/authentication_failures/authentication_failures.dart';
import '../../domain/i_authentication_service.dart';
import '../../domain/user/user.dart';

part 'sign_up_bloc.freezed.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthenticationService authenticationService;

  SignUpBloc(this.authenticationService) : super(SignUpState.initial()) {
    on<ConfirmationCodeSubmitted>(_onConfirmationCodeSubmitted);
    on<PasswordChanged>(_onPasswordChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<SignUpPressed>(_onSignUpPressed);
  }

  FutureOr<void> _onConfirmationCodeSubmitted(
    ConfirmationCodeSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    emit(
      state.copyWith(
        failureOrUser: none(),
        failureOrSuccessConfirmation: none(),
      ),
    );

    final failureOrSuccessConfirmation =
        await authenticationService.confirmCode(event.confirmationCode);

    emit(state.copyWith(
      failureOrSuccessConfirmation: some(failureOrSuccessConfirmation),
    ));
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
        failureOrUser: none(),
        failureOrSuccessConfirmation: none(),
      ),
    );
  }

  FutureOr<void> _onPhoneNumberChanged(
    PhoneNumberChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.phoneNumber,
        failureOrUser: none(),
        failureOrSuccessConfirmation: none(),
      ),
    );
  }

  Future<void> _onSignUpPressed(
    SignUpPressed event,
    Emitter<SignUpState> emit,
  ) async {
    emit(
      state.copyWith(
        failureOrUser: none(),
        failureOrSuccessConfirmation: none(),
      ),
    );

    final failureOrUser = await authenticationService.signUp(
      phoneNumber: state.phoneNumber,
      password: state.password,
    );

    emit(state.copyWith(
      failureOrUser: some(failureOrUser),
    ));
  }
}
