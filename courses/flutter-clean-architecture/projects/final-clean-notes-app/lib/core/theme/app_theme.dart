import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
class AppTheme {
  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.card, foregroundColor: Colors.white, elevation: 0),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColors.accent, foregroundColor: AppColors.background),
    cardColor: AppColors.card,
  );
}
