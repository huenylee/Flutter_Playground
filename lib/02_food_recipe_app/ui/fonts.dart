import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart' show TextStyle;
import 'package:google_fonts/google_fonts.dart';

abstract class Fonts {
  static TextStyle _baseStyle(double fontSize, FontWeight fontWeight) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      height: 1.5,
      letterSpacing: 0,
    );
  }

  // Title Text
  static TextStyle tittleTextBold = _baseStyle(50, FontWeight.w600);
  static TextStyle tittleTextRegular = _baseStyle(50, FontWeight.normal);

  // Header Text
  static TextStyle headerTextRegular = _baseStyle(30, FontWeight.normal);
  static TextStyle headerTextBold = _baseStyle(30, FontWeight.w600);

  // Large Text
  static TextStyle largeTextBold = _baseStyle(20, FontWeight.w600);
  static TextStyle largeTextRegular = _baseStyle(20, FontWeight.normal);

  // Medium Text
  static TextStyle mediumTextBold = _baseStyle(18, FontWeight.w600);
  static TextStyle mediumTextRegular = _baseStyle(18, FontWeight.normal);

  // Normal Text
  static TextStyle normalTextBold = _baseStyle(16, FontWeight.w600);
  static TextStyle normalTextRegular = _baseStyle(16, FontWeight.normal);

  // Small Text
  static TextStyle smallTextBold = _baseStyle(14, FontWeight.w600);
  static TextStyle smallTextRegular = _baseStyle(14, FontWeight.normal);

  // Smaller Text
  static TextStyle smallerTextBold = _baseStyle(11, FontWeight.w600);
  static TextStyle smallerTextSemiBold = _baseStyle(11, FontWeight.w500);
  static TextStyle smallerTextRegular = _baseStyle(11, FontWeight.normal);
  static TextStyle smallerTextSmall = _baseStyle(8, FontWeight.w400);

  // Small Label
  static TextStyle smallLabel = _baseStyle(8, FontWeight.normal);
}
