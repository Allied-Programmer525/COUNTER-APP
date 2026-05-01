import 'package:flutter/material.dart';

class AppTheme {
  /// 🌞 LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF5B6CFF),

    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 2),

    colorScheme: const ColorScheme.light(primary: Color(0xFF5B6CFF)),

    scaffoldBackgroundColor: const Color(0xFFF5F7FB),

    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
    ),
  );

  /// 🌙 DARK THEME
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 2),

    colorScheme: const ColorScheme.dark(primary: Color(0xFF7F8CFF)),

    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
    ),
  );
}
