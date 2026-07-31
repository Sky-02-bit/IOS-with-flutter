import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    fontFamily: GoogleFonts.lato().fontFamily,
  );
}
