import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2:
        TextStyle(color: Color(0xFF6A3807), fontSize: 28, fontFamily: 'Inter'),
    subtitle2: GoogleFonts.inter(color: Colors.deepPurple, fontSize: 24),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline2: GoogleFonts.inter(color: Colors.white70),
    subtitle2: GoogleFonts.inter(color: Colors.white60, fontSize: 24),
  );
}
