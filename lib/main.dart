// ignore_for_file: depend_on_referenced_packages

import 'package:english_test/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  await platformInit();

  runApp(EasyLocalization(
    supportedLocales: const [Locale('en')],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    child: const App(),
  ));
}

Future<void> platformInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Future.wait([
    EasyLocalization.ensureInitialized(),
    Hive.initFlutter(),
  ]);
}
