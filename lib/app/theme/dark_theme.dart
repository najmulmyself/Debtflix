import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class DarkTheme {
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: MaterialColor(AppColors.primaryDark),
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          surface: const Color(0xFF1E1E1E),
          background: const Color(0xFF121212),
          error: AppColors.error,
          onPrimary: AppColors.surface,
          onSecondary: AppColors.text,
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: const Color(0xFF1E1E1E),
          foregroundColor: AppColors.text,
          elevation: 0,
          titleTextStyle: AppTextStyles.headline2,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF1E1E1E),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          foregroundColor: AppColors.primary,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.border),
            borderRadius: BorderRadius.all(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.accent,
        ),
      );
}