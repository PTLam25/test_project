import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failures.freezed.dart';

@freezed
class AuthenticationFailures with _$AuthenticationFailures {
  const factory AuthenticationFailures.invalidCode() = _InvalidCode;

  const factory AuthenticationFailures.invalidPhoneNumberAndPasswordCombination() =
      _InvalidPhoneNumberAndPasswordCombination;

  const factory AuthenticationFailures.phoneNumberAlreadyExists() =
      _PhoneNumberAlreadyExists;

  const factory AuthenticationFailures.unauthorized({
    required bool isRegistered,
  }) = _Unauthorized;

  const factory AuthenticationFailures.unexpected() = _Unexpected;
}
