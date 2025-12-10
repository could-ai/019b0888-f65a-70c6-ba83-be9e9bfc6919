import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final Color _primaryColor = const Color(0xFF006994); // Ocean Blue
  static final Color _secondaryColor = const Color(0xFFFF6F61); // Coral/Warning
  static final Color _accentColor = const Color(0xFF00BCD4); // Cyan

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        primary: _primaryColor,
        secondary: _secondaryColor,
        tertiary: _accentColor,
        surface: Colors.grey[50]!,
      ),
      scaffoldBackgroundColor: Colors.grey[50],
      appBarTheme: AppBarTheme(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.bold, color: _primaryColor),
        displayMedium: GoogleFonts.montserrat(fontSize: 28, fontWeight: FontWeight.bold, color: _primaryColor),
        displaySmall: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: _primaryColor),
        headlineMedium: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black87),
        titleLarge: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: _primaryColor),
        bodyLarge: GoogleFonts.openSans(fontSize: 16, color: Colors.black87),
        bodyMedium: GoogleFonts.openSans(fontSize: 14, color: Colors.black87),
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}
