import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Global {
  static TextStyle size16 = GoogleFonts.getFont(
    'Montserrat',
    fontSize: 16,
    color: Color(0xff888888),
  );

  static TextStyle size15 = GoogleFonts.getFont(
    'Montserrat',
    fontSize: 15,
    color: Color(0xff888888),
    fontWeight: FontWeight.w500,
  );

  static TextStyle size17 = GoogleFonts.getFont(
    'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: Color(0xff787878),
  );

  static TextStyle size19 = GoogleFonts.getFont(
    'Montserrat',
    fontSize: 19,
    color: Color(0xff000000),
    fontWeight: FontWeight.w600,
  );

  static TextStyle size35 = GoogleFonts.getFont(
    'Cormorant',
    fontWeight: FontWeight.w600,
    fontSize: 35,
    color: Color(0xff000000),
  );
}
