part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String phoneNumber,
    required String password,
    required bool isSubmitting,
    required Option<Either<AuthenticationFailures, User>> failureOrUser,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
    phoneNumber: '',
    password: '',
    isSubmitting: false,
    failureOrUser: none(),
  );
}
