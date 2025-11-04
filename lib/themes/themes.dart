import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue).copyWith(
    primary: Colors.white,
    secondary: const Color(0xFFE7ECF0),
    inversePrimary: Colors.black,
    surface: Colors.white,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    // Large bold title (like “Need another account?”)
    titleLarge: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    // Smaller subtitle / paragraph
    bodySmall: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
      // height: 1.4,
    ),

    // Small caption (like “By signing up, you agree…”)
    labelSmall: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color.fromARGB(255, 171, 169, 169),
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.lightBlue,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: 14,
      color: const Color.fromARGB(255, 72, 79, 86),
    ),
  ),
);
