import 'package:flutter/material.dart';

class AppTheme {
  // 小米品牌色
  static const Color xiaomiOrange = Color(0xFFFF6900);
  static const Color xiaomiBlack = Color(0xFF1A1A1A);
  static const Color xiaomiDarkGray = Color(0xFF333333);
  static const Color xiaomiGray = Color(0xFF666666);
  static const Color xiaomiLightGray = Color(0xFF999999);
  static const Color xiaomiBg = Color(0xFFF5F5F5);
  static const Color xiaomiWhite = Color(0xFFFFFFFF);
  static const Color xiaomiCardBg = Color(0xFFFFFFFF);

  // 渐变色
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFF6900), Color(0xFFFF8F33)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient headerGradient = LinearGradient(
    colors: [Color(0xFF1A1A1A), Color(0xFF333333)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: xiaomiOrange,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: xiaomiBg,
    appBarTheme: const AppBarTheme(
      backgroundColor: xiaomiWhite,
      foregroundColor: xiaomiBlack,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: xiaomiBlack,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'MiSans',
      ),
    ),
    cardTheme: CardTheme(
      color: xiaomiCardBg,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: xiaomiBlack,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: xiaomiBlack,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: xiaomiBlack,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: xiaomiBlack,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: xiaomiDarkGray,
        height: 1.6,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: xiaomiGray,
        height: 1.5,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: xiaomiOrange,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: xiaomiOrange,
      foregroundColor: xiaomiWhite,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: xiaomiWhite,
      selectedItemColor: xiaomiOrange,
      unselectedItemColor: xiaomiLightGray,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );
}
