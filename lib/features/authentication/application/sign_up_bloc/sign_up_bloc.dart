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
    on<ConfirmationCodeChanged>(_onConfirmationCodeChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<SignUpPressed>(_onSignUpPressed);
  }

  FutureOr<void> _onConfirmationCodeChanged(
    ConfirmationCodeChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        confirmationCode: event.confirmationCode,
        failureOrUser: none(),
      ),
    );
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignUpState> emit,
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
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.phoneNumber,
        failureOrUser: none(),
      ),
    );
  }

  Future<void> _onSignUpPressed(
    SignUpPressed event,
    Emitter<SignUpState> emit,
  ) async {
    Either<AuthenticationFailures, User>? failureOrUser;

    emit(
      state.copyWith(
        isSubmitting: true,
        failureOrUser: none(),
      ),
    );

    failureOrUser = await authenticationService.signUp(
      phoneNumber: state.phoneNumber,
      password: state.password,
    );

    emit(state.copyWith(
      isSubmitting: false,
      failureOrUser: optionOf(failureOrUser),
    ));
  }
}
