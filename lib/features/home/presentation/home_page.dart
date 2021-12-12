import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../authentication/application/authentication_bloc/authentication_bloc.dart';
import '../../authentication/domain/user/user.dart';
import '../../core/presentation/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: _authenticationBlocListener,
      builder: (_, AuthenticationState state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          authenticated: (User user) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Home'),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => context.read<AuthenticationBloc>().add(
                          const AuthenticationEvent.logout(),
                        ),
                    child: const Text('Выйти'),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () => context.read<AuthenticationBloc>().add(
                          const AuthenticationEvent.resetData(),
                        ),
                    child: const Text('СБРОСИТЬ ДАННЫЕ ПРИЛОЖЕНИЯ'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _authenticationBlocListener(
    BuildContext context,
    AuthenticationState state,
  ) {
    state.whenOrNull(
      unauthenticated: (_, __) =>
          context.router.replaceNamed(AppRoutes.phoneInput),
    );
  }
}
