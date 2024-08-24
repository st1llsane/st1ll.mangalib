import 'package:flutter/material.dart';
import 'package:st1ll_mangalib/shared/theme/color.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: LColor.bg,
    primary: LColor.primary,
    secondary: LColor.accent,
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: LColor.primary,
    ),
    bodyMedium: TextStyle(
      color: LColor.primary,
    ),
    bodyLarge: TextStyle(
      color: LColor.primary,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
  ),
);
