import 'package:flutter/material.dart';
import 'package:mobi_med/config/app_color.dart';

class AppTheme {
  static final AppBarTheme _appBarTheme = AppBarTheme(
    color: AppColor.light,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColor.textNeutral),
  );

  static ThemeData Theme = ThemeData(
    scaffoldBackgroundColor: AppColor.light,
    appBarTheme: _appBarTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
