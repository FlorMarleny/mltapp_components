// app_themes.dart
import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static const Color inputBorderColor = Color.fromARGB(255, 242, 247, 252);
  static const Color buttonBackgroundColor = Color.fromARGB(255, 39, 126, 224);
  static const Color buttonTextColor = Colors.blue;
  static const Color imputtColor = Colors.blue;

  static final ThemeData myTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );

  static final ThemeData myFisDarck = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    iconTheme: const IconThemeData(color: primary),
  );

  static final ButtonStyle loginScreenButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(vertical: 16),
    ),
  );
}
