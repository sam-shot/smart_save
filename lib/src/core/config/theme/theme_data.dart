import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_save/src/core/config/theme/colors.dart';

class AppTheme {
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor, brightness: Brightness.dark),
    scaffoldBackgroundColor: AppColors.bg,
    textTheme: TextTheme(
      /// Light WEIGHT
      bodySmall: GoogleFonts.plusJakartaSans(
          fontSize: 12,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w300),
      bodyMedium: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w300),
      bodyLarge: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w300),
      titleSmall: GoogleFonts.plusJakartaSans(
          fontSize: 20,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w300),
      titleMedium: GoogleFonts.plusJakartaSans(
        fontSize: 24,
        color: Colors.white.withOpacity(0.9),
        fontWeight: FontWeight.w300,
      ),
      titleLarge: GoogleFonts.plusJakartaSans(
          fontSize: 28,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w300),

      /// NORMAL WEIGHT
      displaySmall: GoogleFonts.plusJakartaSans(
          fontSize: 12,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),
      displayMedium: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),
      displayLarge: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),
      labelSmall: GoogleFonts.plusJakartaSans(
          fontSize: 20,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),
      labelMedium: GoogleFonts.plusJakartaSans(
          fontSize: 24,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),
      labelLarge: GoogleFonts.plusJakartaSans(
          fontSize: 28,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w500),

      /// THICK WEIGHT
      headlineSmall: GoogleFonts.plusJakartaSans(
          fontSize: 22,
          color: Colors.white.withOpacity(0.9),
          fontWeight: FontWeight.w700),
    ),
  );
}
