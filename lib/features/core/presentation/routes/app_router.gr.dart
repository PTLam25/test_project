// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../../authentication/presentation/login_page.dart' as _i3;
import '../../../authentication/presentation/password_input_page.dart' as _i5;
import '../../../authentication/presentation/sms_code_confirmation_page.dart'
    as _i4;
import '../../../home/presentation/home_page.dart' as _i2;
import '../../../splash/presentation/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    SmsCodeConfirmationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SmsCodeConfirmationPage());
    },
    PasswordInputRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PasswordInputPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(LoginRoute.name, path: '/login'),
        _i6.RouteConfig(SmsCodeConfirmationRoute.name,
            path: '/sms-code-confirmation'),
        _i6.RouteConfig(PasswordInputRoute.name, path: '/password-input')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i4.SmsCodeConfirmationPage]
class SmsCodeConfirmationRoute extends _i6.PageRouteInfo<void> {
  const SmsCodeConfirmationRoute()
      : super(name, path: '/sms-code-confirmation');

  static const String name = 'SmsCodeConfirmationRoute';
}

/// generated route for [_i5.PasswordInputPage]
class PasswordInputRoute extends _i6.PageRouteInfo<void> {
  const PasswordInputRoute() : super(name, path: '/password-input');

  static const String name = 'PasswordInputRoute';
}
