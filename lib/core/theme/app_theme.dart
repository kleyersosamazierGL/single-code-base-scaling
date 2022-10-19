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
          headline1: const TextStyle(fontSize: 96, fontWeight: FontWeight.w500),
          headline2: const TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
          headline3: const TextStyle(fontSize: 48, fontWeight: FontWeight.w500),
          headline4: const TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
          headline5: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          headline6: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          subtitle1: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          subtitle2: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          bodyText1: TextStyle(
              fontSize: 16, fontFamily: GoogleFonts.ptSans().fontFamily),
          bodyText2: TextStyle(
              fontSize: 14, fontFamily: GoogleFonts.ptSans().fontFamily),
          button: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          caption: TextStyle(
              fontSize: 12, fontFamily: GoogleFonts.ptSans().fontFamily),
          overline: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
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
