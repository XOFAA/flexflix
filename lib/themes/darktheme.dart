import 'package:flutter/material.dart';

class MeuTema {
  static ThemeData netflixTheme() {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFF000000),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Color(0xFFF5F5F1), fontFamily: 'IBM'),
        bodyMedium: TextStyle(color: Color(0xFFF5F5F1), fontFamily: 'IBM'),
      ),
      primaryColor: Colors.red[500],
      primarySwatch: const MaterialColor((0xFFB81D24), {
        50: Colors.red,
        100: Colors.red,
        200: Colors.red,
        300: Colors.red,
        400: Colors.red,
        500: Colors.red,
        600: Colors.red,
        700: Colors.red,
        800: Colors.red,
        900: Colors.red
      }),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color(0xFF221F1F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.4),
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}
