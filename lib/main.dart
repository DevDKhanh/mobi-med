import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'config/app_theme.dart';
import 'router/Routes.dart';
import 'router/Screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobi Med',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.Theme,
      initialRoute: Routes.homePage,
      routes: Screen.list(context),
    );
  }
}
