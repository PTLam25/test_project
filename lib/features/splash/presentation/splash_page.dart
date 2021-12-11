import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication/application/authentication_bloc.dart';
import '../../core/presentation/routes/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: _authenticationBlocListener,
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  void _authenticationBlocListener(
    BuildContext context,
    AuthenticationState state,
  ) {
    state.maybeWhen(
      authenticated: (_) => context.router.pushNamed(AppRoutes.home),
      orElse: () => context.router.pushNamed(AppRoutes.phoneInput),
    );
  }
}
