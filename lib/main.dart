import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'features/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/lang',
      // fallbackLocale: Locale('en', 'US'),
      saveLocale: true,
      startLocale: const Locale('en'),
      useOnlyLangCode: true,
      child: const SampleApp(),
    ),
  );
}
