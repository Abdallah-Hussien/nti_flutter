
import 'package:flutter/material.dart';

class AppThemeData {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.black45, fontSize: 12),
      bodyMedium: TextStyle(
        color: Colors.black87,
        fontSize: 14,
      ),
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.white70, fontSize: 12),
      bodyMedium: TextStyle(color: Colors.white60, fontSize: 14),
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}
