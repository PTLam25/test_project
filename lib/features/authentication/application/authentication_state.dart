part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.authenticated(User user) = _Authenticated;

  const factory AuthenticationState.unauthenticatedRegistered(
    AuthenticationFailures failure,
  ) = _UnauthenticatedRegistered;

  const factory AuthenticationState.unauthenticatedNotRegistered(
    AuthenticationFailures failure,
  ) = _UnauthenticatedNotRegistered;
}
