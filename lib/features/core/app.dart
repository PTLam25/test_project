import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import '../authentication/application/authentication_bloc/authentication_bloc.dart';
import 'presentation/routes/app_router.gr.dart';
import 'presentation/themes/themes.dart' as themes;

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<AuthenticationBloc>(
          create: (_) => getIt<AuthenticationBloc>()
            ..add(
              const AuthenticationEvent.checkAuthenticationStatus(),
            ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: themes.appThemeData,
      ),
    );
  }

  @override
  void initState() {
    _appRouter = AppRouter();

    super.initState();
  }
}
