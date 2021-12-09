// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  CheckAuthenticationStatus checkAuthenticationStatus() {
    return const CheckAuthenticationStatus();
  }

  Logout logout() {
    return const Logout();
  }

  SignIn signIn(String phoneNumber, String password) {
    return SignIn(
      phoneNumber,
      password,
    );
  }

  SignUp signUp(String phoneNumber, String password) {
    return SignUp(
      phoneNumber,
      password,
    );
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthenticationStatus,
    required TResult Function() logout,
    required TResult Function(String phoneNumber, String password) signIn,
    required TResult Function(String phoneNumber, String password) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthenticationStatus value)
        checkAuthenticationStatus,
    required TResult Function(Logout value) logout,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $CheckAuthenticationStatusCopyWith<$Res> {
  factory $CheckAuthenticationStatusCopyWith(CheckAuthenticationStatus value,
          $Res Function(CheckAuthenticationStatus) then) =
      _$CheckAuthenticationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAuthenticationStatusCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $CheckAuthenticationStatusCopyWith<$Res> {
  _$CheckAuthenticationStatusCopyWithImpl(CheckAuthenticationStatus _value,
      $Res Function(CheckAuthenticationStatus) _then)
      : super(_value, (v) => _then(v as CheckAuthenticationStatus));

  @override
  CheckAuthenticationStatus get _value =>
      super._value as CheckAuthenticationStatus;
}

/// @nodoc

class _$CheckAuthenticationStatus extends CheckAuthenticationStatus {
  const _$CheckAuthenticationStatus() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.checkAuthenticationStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckAuthenticationStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthenticationStatus,
    required TResult Function() logout,
    required TResult Function(String phoneNumber, String password) signIn,
    required TResult Function(String phoneNumber, String password) signUp,
  }) {
    return checkAuthenticationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
  }) {
    return checkAuthenticationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
    required TResult orElse(),
  }) {
    if (checkAuthenticationStatus != null) {
      return checkAuthenticationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthenticationStatus value)
        checkAuthenticationStatus,
    required TResult Function(Logout value) logout,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return checkAuthenticationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return checkAuthenticationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (checkAuthenticationStatus != null) {
      return checkAuthenticationStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthenticationStatus extends AuthenticationEvent {
  const factory CheckAuthenticationStatus() = _$CheckAuthenticationStatus;
  const CheckAuthenticationStatus._() : super._();
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(Logout _value, $Res Function(Logout) _then)
      : super(_value, (v) => _then(v as Logout));

  @override
  Logout get _value => super._value as Logout;
}

/// @nodoc

class _$Logout extends Logout {
  const _$Logout() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthenticationStatus,
    required TResult Function() logout,
    required TResult Function(String phoneNumber, String password) signIn,
    required TResult Function(String phoneNumber, String password) signUp,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthenticationStatus value)
        checkAuthenticationStatus,
    required TResult Function(Logout value) logout,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout extends AuthenticationEvent {
  const factory Logout() = _$Logout;
  const Logout._() : super._();
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(SignIn _value, $Res Function(SignIn) _then)
      : super(_value, (v) => _then(v as SignIn));

  @override
  SignIn get _value => super._value as SignIn;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(SignIn(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignIn extends SignIn {
  const _$SignIn(this.phoneNumber, this.password) : super._();

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signIn(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignIn &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $SignInCopyWith<SignIn> get copyWith =>
      _$SignInCopyWithImpl<SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthenticationStatus,
    required TResult Function() logout,
    required TResult Function(String phoneNumber, String password) signIn,
    required TResult Function(String phoneNumber, String password) signUp,
  }) {
    return signIn(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
  }) {
    return signIn?.call(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthenticationStatus value)
        checkAuthenticationStatus,
    required TResult Function(Logout value) logout,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn extends AuthenticationEvent {
  const factory SignIn(String phoneNumber, String password) = _$SignIn;
  const SignIn._() : super._();

  String get phoneNumber;
  String get password;
  @JsonKey(ignore: true)
  $SignInCopyWith<SignIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String password});
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
  }) {
    return _then(SignUp(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUp extends SignUp {
  const _$SignUp(this.phoneNumber, this.password) : super._();

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUp &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $SignUpCopyWith<SignUp> get copyWith =>
      _$SignUpCopyWithImpl<SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthenticationStatus,
    required TResult Function() logout,
    required TResult Function(String phoneNumber, String password) signIn,
    required TResult Function(String phoneNumber, String password) signUp,
  }) {
    return signUp(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
  }) {
    return signUp?.call(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthenticationStatus,
    TResult Function()? logout,
    TResult Function(String phoneNumber, String password)? signIn,
    TResult Function(String phoneNumber, String password)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthenticationStatus value)
        checkAuthenticationStatus,
    required TResult Function(Logout value) logout,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthenticationStatus value)?
        checkAuthenticationStatus,
    TResult Function(Logout value)? logout,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp extends AuthenticationEvent {
  const factory SignUp(String phoneNumber, String password) = _$SignUp;
  const SignUp._() : super._();

  String get phoneNumber;
  String get password;
  @JsonKey(ignore: true)
  $SignUpCopyWith<SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Authenticated authenticated(User user) {
    return _Authenticated(
      user,
    );
  }

  _UnauthenticatedRegistered unauthenticatedRegistered(
      AuthenticationFailures failure) {
    return _UnauthenticatedRegistered(
      failure,
    );
  }

  _UnauthenticatedNotRegistered unauthenticatedNotRegistered(
      AuthenticationFailures failure) {
    return _UnauthenticatedNotRegistered(
      failure,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) authenticated,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedRegistered,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedNotRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnauthenticatedRegistered value)
        unauthenticatedRegistered,
    required TResult Function(_UnauthenticatedNotRegistered value)
        unauthenticatedNotRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) authenticated,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedRegistered,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedNotRegistered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnauthenticatedRegistered value)
        unauthenticatedRegistered,
    required TResult Function(_UnauthenticatedNotRegistered value)
        unauthenticatedNotRegistered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) authenticated,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedRegistered,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedNotRegistered,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnauthenticatedRegistered value)
        unauthenticatedRegistered,
    required TResult Function(_UnauthenticatedNotRegistered value)
        unauthenticatedNotRegistered,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated(User user) = _$_Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedRegisteredCopyWith<$Res> {
  factory _$UnauthenticatedRegisteredCopyWith(_UnauthenticatedRegistered value,
          $Res Function(_UnauthenticatedRegistered) then) =
      __$UnauthenticatedRegisteredCopyWithImpl<$Res>;
  $Res call({AuthenticationFailures failure});

  $AuthenticationFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class __$UnauthenticatedRegisteredCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnauthenticatedRegisteredCopyWith<$Res> {
  __$UnauthenticatedRegisteredCopyWithImpl(_UnauthenticatedRegistered _value,
      $Res Function(_UnauthenticatedRegistered) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedRegistered));

  @override
  _UnauthenticatedRegistered get _value =>
      super._value as _UnauthenticatedRegistered;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UnauthenticatedRegistered(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailures,
    ));
  }

  @override
  $AuthenticationFailuresCopyWith<$Res> get failure {
    return $AuthenticationFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UnauthenticatedRegistered implements _UnauthenticatedRegistered {
  const _$_UnauthenticatedRegistered(this.failure);

  @override
  final AuthenticationFailures failure;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticatedRegistered(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnauthenticatedRegistered &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$UnauthenticatedRegisteredCopyWith<_UnauthenticatedRegistered>
      get copyWith =>
          __$UnauthenticatedRegisteredCopyWithImpl<_UnauthenticatedRegistered>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) authenticated,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedRegistered,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedRegistered(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedRegistered?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (unauthenticatedRegistered != null) {
      return unauthenticatedRegistered(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnauthenticatedRegistered value)
        unauthenticatedRegistered,
    required TResult Function(_UnauthenticatedNotRegistered value)
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (unauthenticatedRegistered != null) {
      return unauthenticatedRegistered(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedRegistered implements AuthenticationState {
  const factory _UnauthenticatedRegistered(AuthenticationFailures failure) =
      _$_UnauthenticatedRegistered;

  AuthenticationFailures get failure;
  @JsonKey(ignore: true)
  _$UnauthenticatedRegisteredCopyWith<_UnauthenticatedRegistered>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedNotRegisteredCopyWith<$Res> {
  factory _$UnauthenticatedNotRegisteredCopyWith(
          _UnauthenticatedNotRegistered value,
          $Res Function(_UnauthenticatedNotRegistered) then) =
      __$UnauthenticatedNotRegisteredCopyWithImpl<$Res>;
  $Res call({AuthenticationFailures failure});

  $AuthenticationFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class __$UnauthenticatedNotRegisteredCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$UnauthenticatedNotRegisteredCopyWith<$Res> {
  __$UnauthenticatedNotRegisteredCopyWithImpl(
      _UnauthenticatedNotRegistered _value,
      $Res Function(_UnauthenticatedNotRegistered) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedNotRegistered));

  @override
  _UnauthenticatedNotRegistered get _value =>
      super._value as _UnauthenticatedNotRegistered;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UnauthenticatedNotRegistered(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthenticationFailures,
    ));
  }

  @override
  $AuthenticationFailuresCopyWith<$Res> get failure {
    return $AuthenticationFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UnauthenticatedNotRegistered implements _UnauthenticatedNotRegistered {
  const _$_UnauthenticatedNotRegistered(this.failure);

  @override
  final AuthenticationFailures failure;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticatedNotRegistered(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnauthenticatedNotRegistered &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$UnauthenticatedNotRegisteredCopyWith<_UnauthenticatedNotRegistered>
      get copyWith => __$UnauthenticatedNotRegisteredCopyWithImpl<
          _UnauthenticatedNotRegistered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) authenticated,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedRegistered,
    required TResult Function(AuthenticationFailures failure)
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedNotRegistered(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedNotRegistered?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? authenticated,
    TResult Function(AuthenticationFailures failure)? unauthenticatedRegistered,
    TResult Function(AuthenticationFailures failure)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (unauthenticatedNotRegistered != null) {
      return unauthenticatedNotRegistered(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnauthenticatedRegistered value)
        unauthenticatedRegistered,
    required TResult Function(_UnauthenticatedNotRegistered value)
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedNotRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
  }) {
    return unauthenticatedNotRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnauthenticatedRegistered value)?
        unauthenticatedRegistered,
    TResult Function(_UnauthenticatedNotRegistered value)?
        unauthenticatedNotRegistered,
    required TResult orElse(),
  }) {
    if (unauthenticatedNotRegistered != null) {
      return unauthenticatedNotRegistered(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedNotRegistered implements AuthenticationState {
  const factory _UnauthenticatedNotRegistered(AuthenticationFailures failure) =
      _$_UnauthenticatedNotRegistered;

  AuthenticationFailures get failure;
  @JsonKey(ignore: true)
  _$UnauthenticatedNotRegisteredCopyWith<_UnauthenticatedNotRegistered>
      get copyWith => throw _privateConstructorUsedError;
}
