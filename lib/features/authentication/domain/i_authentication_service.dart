import 'package:dartz/dartz.dart';

import 'authentication_failures/authentication_failures.dart';
import 'user/user.dart';

abstract class AuthenticationService {
  Future<Either<AuthenticationFailures, User>> getCurrentUser();

  Future<Either<AuthenticationFailures, User>> signIn({
    required String phoneNumber,
    required String password,
  });

  Future<Either<AuthenticationFailures, User>> signUp({
    required String phoneNumber,
    required String password,
  });

  Future<Either<AuthenticationFailures, Unit>> confirmCode(
    String verificationCode,
  );

  Future<Either<AuthenticationFailures, Unit>> logout();

  Future<Either<AuthenticationFailures, Unit>> resetData();
}
