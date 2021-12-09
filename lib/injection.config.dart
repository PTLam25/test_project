// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/authentication/application/authentication_bloc.dart' as _i6;
import 'features/authentication/domain/i_authentication_service.dart' as _i4;
import 'features/authentication/infrastructure/impl_authentication_service.dart'
    as _i5;
import 'features/authentication/infrastructure/shared_prefs_db.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingletonAsync<_i3.SharedPrefsDb>(() => _i3.SharedPrefsDb.create());
  gh.lazySingletonAsync<_i4.AuthenticationService>(() async =>
      _i5.ImplAuthenticationService(await get.getAsync<_i3.SharedPrefsDb>()));
  gh.factoryAsync<_i6.AuthenticationBloc>(() async =>
      _i6.AuthenticationBloc(await get.getAsync<_i4.AuthenticationService>()));
  return get;
}