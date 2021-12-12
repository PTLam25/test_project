part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String phoneNumber,
    required String password,
    required bool isSubmitting,
    required Option<Either<AuthenticationFailures, User>> failureOrUser,
    required Option<Either<AuthenticationFailures, Unit>>
        failureOrSuccessConfirmation,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        phoneNumber: '',
        password: '',
        isSubmitting: false,
        failureOrUser: none(),
        failureOrSuccessConfirmation: none(),
      );
}
