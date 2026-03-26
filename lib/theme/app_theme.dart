import 'package:flutter/material.dart';

class AppTheme {
  // 小米品牌色
  static const Color xiaomiOrange = Color(0xFFFF6900);
  static const Color xiaomiOrangeLight = Color(0xFFFFF3E0);
  static const Color xiaomiBlack = Color(0xFF1A1A1A);
  static const Color xiaomiDarkGray = Color(0xFF333333);
  static const Color xiaomiGray = Color(0xFF666666);
  static const Color xiaomiLightGray = Color(0xFF999999);
  static const Color xiaomiBg = Color(0xFFF7F7F7);
  static const Color xiaomiWhite = Color(0xFFFFFFFF);
  static const Color xiaomiCardBg = Color(0xFFFFFFFF);

  // 功能色
  static const Color colorSuccess = Color(0xFF43A047);
  static const Color colorInfo = Color(0xFF1E88E5);
  static const Color colorPurple = Color(0xFF7C4DFF);
  static const Color colorTeal = Color(0xFF00897B);
  static const Color colorRed = Color(0xFFE53935);

  // 渐变
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFF6900), Color(0xFFFF8F33)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkGradient = LinearGradient(
    colors: [Color(0xFF1A1A1A), Color(0xFF2D2D2D)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // 卡片装饰
  static BoxDecoration cardDecoration = BoxDecoration(
    color: xiaomiWhite,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.04),
        blurRadius: 16,
        offset: const Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration cardDecorationColored(Color color) => BoxDecoration(
    color: xiaomiWhite,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: color.withOpacity(0.08),
        blurRadius: 16,
        offset: const Offset(0, 4),
      ),
    ],
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
        fontWeight: FontWeight.w700,
      ),
    ),
    cardTheme: CardTheme(
      color: xiaomiCardBg,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: xiaomiBlack,
        height: 1.2,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: xiaomiBlack,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
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
      elevation: 16,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontSize: 11),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: xiaomiWhite,
      width: 280,
    ),
  );
}
