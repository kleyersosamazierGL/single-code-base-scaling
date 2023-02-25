import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData themeData() => ThemeData(
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        textTheme: TextTheme(
          displayLarge:
              const TextStyle(fontSize: 96, fontWeight: FontWeight.w500),
          displayMedium:
              const TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
          displaySmall:
              const TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
          headlineMedium:
              const TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
          headlineSmall:
              const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          titleLarge:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          titleMedium:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          titleSmall:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              fontSize: 16, fontFamily: GoogleFonts.ptSans().fontFamily),
          bodyMedium: TextStyle(
              fontSize: 14, fontFamily: GoogleFonts.ptSans().fontFamily),
          labelLarge: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: TextStyle(
              fontSize: 12, fontFamily: GoogleFonts.ptSans().fontFamily),
          labelSmall: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            foregroundColor: Colors.white,
          ),
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
