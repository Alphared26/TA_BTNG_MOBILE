import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 0, 0, 0); // gold
  static const Color background = Color.fromARGB(255, 255, 255, 255);
  static const Color textDark = Color(0xFF1F1F1F);

  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 57, 57, 57)),
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 16, color: textDark),
        bodyMedium: TextStyle(fontSize: 14, color: textDark),
        titleLarge: TextStyle(fontWeight: FontWeight.bold, color: textDark),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textDark,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      useMaterial3: true,
    );
  }
}
