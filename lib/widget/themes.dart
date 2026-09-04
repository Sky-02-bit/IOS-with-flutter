import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  // LIGHT THEME
 
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,

        // Application font.
        fontFamily: GoogleFonts.poppins().fontFamily,

        // card color
       
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),

          titleLarge: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.black),
          titleSmall: TextStyle(color: Colors.black),
        ),

        // AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.0,

          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      );

  // DARK THEME
 
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
        fontFamily: GoogleFonts.lato().fontFamily,
        // Explicit dark-theme text colors.
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),

          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
        ),
      );

  // COLORS
  static Color creameColor = const Color(0xfff5f5f5);
  static Color grayColor = const Color.fromARGB(215, 4, 4, 4);
  static Color blueColor = Vx.blue400;
  static Color whiteColor = const Color.fromARGB(
    255,
    253,
    252,
    252,
  );
}