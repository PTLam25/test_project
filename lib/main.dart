import 'dart:async';

import 'package:flutter/material.dart';

import 'features/core/app.dart';

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

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
