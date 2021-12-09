import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../domain/authentication_failures/authentication_failures.dart';
import '../domain/i_authentication_service.dart';
import '../domain/user/user.dart';
import 'shared_prefs_db.dart';

@LazySingleton(as: AuthenticationService)
class ImplAuthenticationService implements AuthenticationService {
  final SharedPrefsDb _sharedPrefsDb;

  ImplAuthenticationService(this._sharedPrefsDb);

  @override
  Future<Either<AuthenticationFailures, User>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthenticationFailures, void>> confirmCode(
    String verificationCode,
  ) {
    // TODO: implement confirmCode
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthenticationFailures, User>> signIn({
    required String phoneNumber,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthenticationFailures, User>> signUp({
    required String phoneNumber,
    required String password,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
