import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeTheme {
  static TextTheme lightThemeText = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: Colors.black
    ),
    headline1: GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 21,
      color: Colors.black,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Colors.black,
    ),
  );
  static TextTheme darkThemeText = TextTheme(
    bodyText1: GoogleFonts.openSans(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.white
    ),
    headline1: GoogleFonts.openSans(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontWeight: FontWeight.w700,
      fontSize: 21,
      color: Colors.white,
    ),
    headline3: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    headline6: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: lightThemeText,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: darkThemeText,
      appBarTheme:  AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green
      ),
    );
  }
}