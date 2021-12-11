part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  const factory AuthenticationEvent.checkAuthenticationStatus() =
      CheckAuthenticationStatus;

  const factory AuthenticationEvent.logout() = Logout;
}
