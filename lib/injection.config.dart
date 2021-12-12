// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/authentication/application/authentication_bloc/authentication_bloc.dart'
    as _i7;
import 'features/authentication/application/sign_in_bloc/sign_in_bloc.dart'
    as _i5;
import 'features/authentication/application/sign_up_bloc/sign_up_bloc.dart'
    as _i6;
import 'features/authentication/domain/i_authentication_service.dart' as _i3;
import 'features/authentication/infrastructure/impl_authentication_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AuthenticationService>(_i4.ImplAuthenticationService());
  gh.factory<_i5.SignInBloc>(
      () => _i5.SignInBloc(get<_i3.AuthenticationService>()));
  gh.factory<_i6.SignUpBloc>(
      () => _i6.SignUpBloc(get<_i3.AuthenticationService>()));
  gh.factory<_i7.AuthenticationBloc>(
      () => _i7.AuthenticationBloc(get<_i3.AuthenticationService>()));
  return get;
}
