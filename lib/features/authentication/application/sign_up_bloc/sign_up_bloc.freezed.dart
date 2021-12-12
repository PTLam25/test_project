// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  ConfirmationCodeSubmitted confirmationCodeSubmitted(String confirmationCode) {
    return ConfirmationCodeSubmitted(
      confirmationCode,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  SignUpPressed signUpPressed() {
    return const SignUpPressed();
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String confirmationCode)
        confirmationCodeSubmitted,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationCodeSubmitted value)
        confirmationCodeSubmitted,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $ConfirmationCodeSubmittedCopyWith<$Res> {
  factory $ConfirmationCodeSubmittedCopyWith(ConfirmationCodeSubmitted value,
          $Res Function(ConfirmationCodeSubmitted) then) =
      _$ConfirmationCodeSubmittedCopyWithImpl<$Res>;
  $Res call({String confirmationCode});
}

/// @nodoc
class _$ConfirmationCodeSubmittedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $ConfirmationCodeSubmittedCopyWith<$Res> {
  _$ConfirmationCodeSubmittedCopyWithImpl(ConfirmationCodeSubmitted _value,
      $Res Function(ConfirmationCodeSubmitted) _then)
      : super(_value, (v) => _then(v as ConfirmationCodeSubmitted));

  @override
  ConfirmationCodeSubmitted get _value =>
      super._value as ConfirmationCodeSubmitted;

  @override
  $Res call({
    Object? confirmationCode = freezed,
  }) {
    return _then(ConfirmationCodeSubmitted(
      confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmationCodeSubmitted implements ConfirmationCodeSubmitted {
  const _$ConfirmationCodeSubmitted(this.confirmationCode);

  @override
  final String confirmationCode;

  @override
  String toString() {
    return 'SignUpEvent.confirmationCodeSubmitted(confirmationCode: $confirmationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConfirmationCodeSubmitted &&
            const DeepCollectionEquality()
                .equals(other.confirmationCode, confirmationCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmationCode));

  @JsonKey(ignore: true)
  @override
  $ConfirmationCodeSubmittedCopyWith<ConfirmationCodeSubmitted> get copyWith =>
      _$ConfirmationCodeSubmittedCopyWithImpl<ConfirmationCodeSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String confirmationCode)
        confirmationCodeSubmitted,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpPressed,
  }) {
    return confirmationCodeSubmitted(confirmationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
  }) {
    return confirmationCodeSubmitted?.call(confirmationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (confirmationCodeSubmitted != null) {
      return confirmationCodeSubmitted(confirmationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationCodeSubmitted value)
        confirmationCodeSubmitted,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return confirmationCodeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
  }) {
    return confirmationCodeSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (confirmationCodeSubmitted != null) {
      return confirmationCodeSubmitted(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeSubmitted implements SignUpEvent {
  const factory ConfirmationCodeSubmitted(String confirmationCode) =
      _$ConfirmationCodeSubmitted;

  String get confirmationCode;
  @JsonKey(ignore: true)
  $ConfirmationCodeSubmittedCopyWith<ConfirmationCodeSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String confirmationCode)
        confirmationCodeSubmitted,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpPressed,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationCodeSubmitted value)
        confirmationCodeSubmitted,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements SignUpEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String confirmationCode)
        confirmationCodeSubmitted,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationCodeSubmitted value)
        confirmationCodeSubmitted,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpPressedCopyWith<$Res> {
  _$SignUpPressedCopyWithImpl(
      SignUpPressed _value, $Res Function(SignUpPressed) _then)
      : super(_value, (v) => _then(v as SignUpPressed));

  @override
  SignUpPressed get _value => super._value as SignUpPressed;
}

/// @nodoc

class _$SignUpPressed implements SignUpPressed {
  const _$SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String confirmationCode)
        confirmationCodeSubmitted,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signUpPressed,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
  }) {
    return signUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String confirmationCode)? confirmationCodeSubmitted,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signUpPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmationCodeSubmitted value)
        confirmationCodeSubmitted,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignUpPressed value) signUpPressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmationCodeSubmitted value)?
        confirmationCodeSubmitted,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignUpPressed value)? signUpPressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignUpEvent {
  const factory SignUpPressed() = _$SignUpPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required String phoneNumber,
      required String password,
      required Option<Either<AuthenticationFailures, User>> failureOrUser,
      required Option<Either<AuthenticationFailures, Unit>>
          failureOrSuccessConfirmation}) {
    return _SignUpState(
      phoneNumber: phoneNumber,
      password: password,
      failureOrUser: failureOrUser,
      failureOrSuccessConfirmation: failureOrSuccessConfirmation,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailures, User>> get failureOrUser =>
      throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailures, Unit>>
      get failureOrSuccessConfirmation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String password,
      Option<Either<AuthenticationFailures, User>> failureOrUser,
      Option<Either<AuthenticationFailures, Unit>>
          failureOrSuccessConfirmation});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? failureOrUser = freezed,
    Object? failureOrSuccessConfirmation = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrUser: failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailures, User>>,
      failureOrSuccessConfirmation: failureOrSuccessConfirmation == freezed
          ? _value.failureOrSuccessConfirmation
          : failureOrSuccessConfirmation // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailures, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phoneNumber,
      String password,
      Option<Either<AuthenticationFailures, User>> failureOrUser,
      Option<Either<AuthenticationFailures, Unit>>
          failureOrSuccessConfirmation});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? failureOrUser = freezed,
    Object? failureOrSuccessConfirmation = freezed,
  }) {
    return _then(_SignUpState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrUser: failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailures, User>>,
      failureOrSuccessConfirmation: failureOrSuccessConfirmation == freezed
          ? _value.failureOrSuccessConfirmation
          : failureOrSuccessConfirmation // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.phoneNumber,
      required this.password,
      required this.failureOrUser,
      required this.failureOrSuccessConfirmation});

  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final Option<Either<AuthenticationFailures, User>> failureOrUser;
  @override
  final Option<Either<AuthenticationFailures, Unit>>
      failureOrSuccessConfirmation;

  @override
  String toString() {
    return 'SignUpState(phoneNumber: $phoneNumber, password: $password, failureOrUser: $failureOrUser, failureOrSuccessConfirmation: $failureOrSuccessConfirmation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.failureOrUser, failureOrUser) &&
            const DeepCollectionEquality().equals(
                other.failureOrSuccessConfirmation,
                failureOrSuccessConfirmation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(failureOrUser),
      const DeepCollectionEquality().hash(failureOrSuccessConfirmation));

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required String phoneNumber,
      required String password,
      required Option<Either<AuthenticationFailures, User>> failureOrUser,
      required Option<Either<AuthenticationFailures, Unit>>
          failureOrSuccessConfirmation}) = _$_SignUpState;

  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  Option<Either<AuthenticationFailures, User>> get failureOrUser;
  @override
  Option<Either<AuthenticationFailures, Unit>> get failureOrSuccessConfirmation;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
