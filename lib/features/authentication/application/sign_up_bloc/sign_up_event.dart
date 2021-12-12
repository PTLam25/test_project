part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.confirmationCodeSubmitted(String confirmationCode) =
      ConfirmationCodeSubmitted;

  const factory SignUpEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;

  const factory SignUpEvent.passwordChanged(String password) = PasswordChanged;

  const factory SignUpEvent.signUpPressed() = SignUpPressed;
}
