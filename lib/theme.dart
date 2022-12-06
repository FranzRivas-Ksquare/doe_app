import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoeTheme {
  static final ThemeData theme = ThemeData(
    textTheme: TextTheme(
      bodyText1: GoogleFonts.raleway(
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: .5
        ),
      ),
      headlineLarge: GoogleFonts.lora(
        textStyle: const TextStyle(
            color: Color(0xFFBB865C),
            fontSize: 55,
            fontWeight: FontWeight.w400,
            letterSpacing: .5
        ),
      ),
      subtitle1: GoogleFonts.raleway(
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
            letterSpacing: .5
        ),
      ),
      button: GoogleFonts.raleway(
        textStyle: const TextStyle(
            color: Color(0xFF02020A),
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),
      ),
      overline: GoogleFonts.raleway(
        textStyle: const TextStyle(
            color: Color(0xFFF9EAE6),
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: .5
        ),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFF02020A),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF353046),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(25, 10, 25, 10),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xFFF9EAE6)
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21.0),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(25, 10, 25, 10),
        ),
        overlayColor: MaterialStateProperty.all<Color>(
            const Color(0x33F9EAE6)
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.0),
          ),
        ),
        side: MaterialStateProperty.all(
            const BorderSide(width: 1.5 , color: Color(0xFFF9EAE6))
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF352F44),
    ),
  );
}