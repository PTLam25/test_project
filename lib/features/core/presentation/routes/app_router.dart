import 'package:auto_route/auto_route.dart';

import '../../../authentication/presentation/login_page.dart';
import '../../../authentication/presentation/password_input_page.dart';
import '../../../authentication/presentation/sms_code_confirmation_page.dart';
import '../../../home/presentation/home_page.dart';
import '../../../splash/presentation/splash_page.dart';

part 'app_routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      initial: true,
      path: AppRoutes.splash,
      page: SplashPage,
    ),
    AutoRoute(
      path: AppRoutes.home,
      page: HomePage,
    ),
    AutoRoute(
      path: AppRoutes.login,
      page: LoginPage,
    ),
    AutoRoute(
      path: AppRoutes.smsCodeConfirmation,
      page: SmsCodeConfirmationPage,
    ),
    AutoRoute(
      path: AppRoutes.passwordInput,
      page: PasswordInputPage,
    ),
  ],
)
class $AppRouter {}
