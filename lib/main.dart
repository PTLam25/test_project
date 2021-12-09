import 'dart:async';

import 'package:flutter/material.dart';

import 'features/core/app.dart';
import 'injection.dart' as di;

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await di.configureInjection();

      runApp(const App());
    },
    (
      Object error,
      StackTrace stackTrace,
    ) {
      // TODO: add crashlytics
    },
  );
}
