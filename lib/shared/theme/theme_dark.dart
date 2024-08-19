import 'package:doa_harian/shared/theme/theme_config.dart';
import 'package:flutter/material.dart';

ThemeData getDarkTheme() {
  return ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0.6,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 12,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 13,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 14,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 12,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 13,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 14,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 13,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 12,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 14,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 13,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 12,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 14,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 13,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        color: textColor,
        fontSize: 12,
      ),
    ),
  );
}
