import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/authentication_failures/authentication_failures.dart';
import '../domain/i_authentication_service.dart';
import '../domain/user/user.dart';

const _mockConfirmationCode = '1234';

@Singleton(as: AuthenticationService)
class ImplAuthenticationService implements AuthenticationService {
  static const String _currentUserKey = 'current_user';
  static const String _isSignInKey = 'is_sign_in';

  @override
  Future<Either<AuthenticationFailures, User>> getCurrentUser() async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();

      final encodedUserMap = _sharedPreferences.getString(_currentUserKey);

      if (encodedUserMap == null) {
        return left(
          const AuthenticationFailures.unauthorized(isRegistered: false),
        );
      }

      final isSignIn = _sharedPreferences.getBool(_isSignInKey) ?? false;

      if (isSignIn) {
        final user = User.fromJson(json.decode(encodedUserMap));

        return right(user);
      }

      return left(
        const AuthenticationFailures.unauthorized(isRegistered: true),
      );
    } catch (e) {
      return left(const AuthenticationFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthenticationFailures, Unit>> confirmCode(
    String verificationCode,
  ) async {
    try {
      if (verificationCode == _mockConfirmationCode) {
        return right(unit);
      }

      return left(
        const AuthenticationFailures.unauthorized(isRegistered: false),
      );
    } catch (e) {
      return left(const AuthenticationFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthenticationFailures, Unit>> logout() async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();

      _sharedPreferences.setBool(_isSignInKey, false);

      return right(unit);
    } catch (e) {
      return left(const AuthenticationFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthenticationFailures, User>> signIn({
    required String phoneNumber,
    required String password,
  }) async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();

      final encodedUserMap = _sharedPreferences.getString(_currentUserKey);

      if (encodedUserMap != null) {
        final user = User.fromJson(json.decode(encodedUserMap));

        if (user.phoneNumber == phoneNumber && user.password == password) {
          return right(user);
        }
      }

      return left(
        const AuthenticationFailures.invalidPhoneNumberAndPasswordCombination(),
      );
    } catch (e) {
      return left(const AuthenticationFailures.unexpected());
    }
  }

  @override
  Future<Either<AuthenticationFailures, User>> signUp({
    required String phoneNumber,
    required String password,
  }) async {
    try {
      final _sharedPreferences = await SharedPreferences.getInstance();

      final newUser = User(phoneNumber: phoneNumber, password: password);

      _sharedPreferences.setString(
        _currentUserKey,
        json.encode(newUser.toJson()),
      );
      _sharedPreferences.setBool(
        _isSignInKey,
        true,
      );

      return right(newUser);
    } catch (e) {
      return left(const AuthenticationFailures.unexpected());
    }
  }
}
