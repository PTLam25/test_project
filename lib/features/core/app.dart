import 'package:flutter/material.dart';

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: themes.appThemeData,
    );
  }

  @override
  void initState() {
    _appRouter = AppRouter();

    super.initState();
  }
}
