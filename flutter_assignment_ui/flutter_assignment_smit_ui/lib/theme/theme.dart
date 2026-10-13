import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  Apptheme._(); // Prevents instantiation

  // LIGHT THEME
  static final ThemeData Lighttheme =
      ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: Colors.white, // App backgrounds / surfaces
          surface: Colors.white,
          onSurface: Colors.black, // Text on surfaces
          secondary:
              Colors.orange[700]!, // Used for your active indicators/pills
          outline: Colors.grey[300]!, // Hover/borders
        ),
      ).copyWith(
        cardColor: Colors.black,
        hintColor: Colors.grey[500],
        indicatorColor: Colors.orange[700],
        hoverColor: Colors.grey[300],
        textTheme: GoogleFonts.figtreeTextTheme(ThemeData.light().textTheme),
        focusColor: Colors.black,
        canvasColor: Colors.grey[300],
      );

  // DARK THEME
  static final ThemeData Darktheme =
      ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          primary: Colors.black, // App backgrounds / surfaces
          surface: Colors.black,
          onSurface: Colors.white, // Text on surfaces
          secondary:
              Colors.orange[700]!, // Used for your active indicators/pills
          outline: Colors.grey[300]!, // Hover/borders
        ),
      ).copyWith(
        cardColor: Colors.white,
        canvasColor: Colors.grey[300],
        focusColor: Colors.white,
        hintColor: Colors.grey[500],
        indicatorColor: Colors.orange[700],
        hoverColor: Colors.grey[300],
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
      );
}
