import 'package:flutter/material.dart';

class ThemeService {
  static final ValueNotifier<bool> _isDarkModeNotifier = ValueNotifier<bool>(false);
  static final ValueNotifier<Color> _accentColorNotifier = ValueNotifier<Color>(const Color(0xFFFF9800));

  static ValueNotifier<bool> get isDarkModeNotifier => _isDarkModeNotifier;
  static ValueNotifier<Color> get accentColorNotifier => _accentColorNotifier;

  static bool get isDarkMode => _isDarkModeNotifier.value;
  static Color get accentColor => _accentColorNotifier.value;

  static void setThemeMode({
    required bool isDarkMode,
  }) {
    _isDarkModeNotifier.value = isDarkMode;
  }

  static void setAccentColor(Color accentColor) {
    _accentColorNotifier.value = accentColor;
  }

  static void dispose() {
    _isDarkModeNotifier.dispose();
    _accentColorNotifier.dispose();
  }
}

class AppTheme {
  const AppTheme._();

  // Color Palette
  static const Color primary = Color(0xFF1976D2);
  static const Color primaryDark = Color(0xFF1565C0);
  static const Color primaryLight = Color(0xFF42A5F5);
  static const Color accent = Color(0xFFFF9800);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFF000000);
  static const Color error = Color(0xFFD32F2F);
  static const Color warning = Color(0xFFF57C00);
  static const Color success = Color(0xFF4CAF50);
  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textOnSurface = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFFAFAFA);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color successText = Color(0xFF4CAF50);
  static const Color errorBackground = Color(0xFFFFEBEE);
  static const Color warningBackground = Color(0xFFFFF3E0);
  static const Color border = Color(0xFFE0E0E0);
  static const Color divider = Color(0xFFBDBDBD);
  static const Color shadow = Color(0x40000000);
  static const Color selectedBorder = Color(0xFF1976D2);
  static const Color unselectedBorder = Color(0xFF4CAF50);

  // Text Styles
  static const TextStyle headlineSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: textPrimary,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );

  static const TextStyle subtitleSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: textSecondary,
  );

  // Light Theme
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: primary,
      primaryContainer: primaryLight,
      secondary: accent,
      tertiary: textPrimary,
      surface: surface,
      onSurface: onSurface,
      onSurfaceVariant: textSecondary,
      error: error,
      onError: textOnSurface,
      onBackground: textPrimary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textPrimary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textSecondary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textSecondary,
      ),
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: textPrimary,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textSecondary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: textOnSurface,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        side: BorderSide(color: border),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accent,
      foregroundColor: textOnSurface,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    cardTheme: CardThemeData(
      color: cardBackground,
      elevation: 2,
      shadowColor: shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: error, width: 2),
      ),
      hintStyle: TextStyle(
        color: textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: textPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      errorStyle: TextStyle(
        color: error,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: divider,
      thickness: 1,
      space: 1,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all<Color>(textOnSurface),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: border, width: 2),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.transparent;
      }),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    switchTheme: SwitchThemeData(
      trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.grey;
      }),
      thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return textOnSurface;
        }
        return textPrimary;
      }),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: surface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: titleLarge,
      iconTheme: IconThemeData(
        color: textPrimary,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: textPrimary,
        size: 24,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: surface,
      selectedItemColor: primary,
      unselectedItemColor: textSecondary,
      elevation: 6,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: surface,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      modalBackgroundColor: surface,
      modalElevation: 8,
      clipBehavior: Clip.antiAlias,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: surface,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: titleLarge,
      contentTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey[200],
      deleteIconColor: textSecondary,
      disabledColor: Colors.grey[300],
      selectedColor: primary,
      secondarySelectedColor: Colors.grey[300],
      shadowColor: Colors.transparent,
      selectedShadowColor: Colors.transparent,
      checkmarkColor: textOnSurface,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textOnSurface,
      ),
      secondaryLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
      brightness: Brightness.light,
      elevation: 0,
      pressElevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: BorderSide(
        color: primary,
        width: 1,
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      titleTextStyle: titleLarge,
      subtitleTextStyle: subtitleSmall,
      leadingAndTrailingTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textPrimary,
      ),
      iconColor: textPrimary,
      textColor: textPrimary,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      preferBelow: true,
      verticalOffset: 24,
    ),
  );

  // Dark Theme
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: primary,
      primaryContainer: primaryDark,
      secondary: accent,
      tertiary: textPrimary,
      surface: const Color(0xFF121212),
      onSurface: textOnSurface,
      onSurfaceVariant: textSecondary,
      error: error,
      onError: textOnSurface,
      onBackground: textPrimary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textOnSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textSecondary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textSecondary,
      ),
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textOnSurface,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: textOnSurface,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: textOnSurface,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textSecondary,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: textOnSurface,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        side: BorderSide(color: border),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accent,
      foregroundColor: textOnSurface,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1E1E1E),
      elevation: 2,
      shadowColor: shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1E1E1E),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: error, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: error, width: 2),
      ),
      hintStyle: TextStyle(
        color: textSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: textOnSurface,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      errorStyle: TextStyle(
        color: error,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: divider,
      thickness: 1,
      space: 1,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all<Color>(textOnSurface),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      side: BorderSide(color: border, width: 2),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.transparent;
      }),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
    switchTheme: SwitchThemeData(
      trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return primary;
        }
        return Colors.grey;
      }),
      thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return textOnSurface;
        }
        return textPrimary;
      }),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFF121212),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: titleLarge,
      iconTheme: IconThemeData(
        color: textOnSurface,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: textOnSurface,
        size: 24,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF121212),
      selectedItemColor: primary,
      unselectedItemColor: textSecondary,
      elevation: 6,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xFF1E1E1E),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      modalBackgroundColor: const Color(0xFF1E1E1E),
      modalElevation: 8,
      clipBehavior: Clip.antiAlias,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: const Color(0xFF1E1E1E),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: titleLarge,
      contentTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textOnSurface,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFF424242),
      deleteIconColor: textSecondary,
      disabledColor: const Color(0xFF616161),
      selectedColor: primary,
      secondarySelectedColor: const Color(0xFF424242),
      shadowColor: Colors.transparent,
      selectedShadowColor: Colors.transparent,
      checkmarkColor: textOnSurface,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textOnSurface,
      ),
      secondaryLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textOnSurface,
      ),
      brightness: Brightness.dark,
      elevation: 0,
      pressElevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      labelPadding: const EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: BorderSide(
        color: primary,
        width: 1,
      ),
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      titleTextStyle: titleLarge,
      subtitleTextStyle: subtitleSmall,
      leadingAndTrailingTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textOnSurface,
      ),
      iconColor: textOnSurface,
      textColor: textOnSurface,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      preferBelow: true,
      verticalOffset: 24,
    ),
  );
}