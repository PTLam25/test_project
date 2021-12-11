part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required String confirmationCode,
    required String phoneNumber,
    required String password,
    required bool isSubmitting,
    required Option<Either<AuthenticationFailures, User>> failureOrUser,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        confirmationCode: '',
        phoneNumber: '',
        password: '',
        isSubmitting: false,
        failureOrUser: none(),
      );
}
