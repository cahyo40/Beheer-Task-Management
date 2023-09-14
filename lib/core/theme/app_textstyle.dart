import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The class `AppTextStyle` defines static text styles for different button sizes using the
/// `GoogleFonts.urbanist` font.
class AppTextStyle {
  static TextStyle btnLarge = GoogleFonts.urbanist(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle appBar = GoogleFonts.urbanist(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColor.neutral900,
  );

  static TextStyle btnMedium = GoogleFonts.urbanist(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle btnSmall = GoogleFonts.urbanist(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static TextStyle inputBasic = GoogleFonts.urbanist(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.neutral500,
  );
  static TextStyle inputType = GoogleFonts.urbanist(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.neutral900,
  );

  static TextStyle inputFill = inputType;
  static TextStyle inputError = GoogleFonts.urbanist(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.red.shade800,
  );
  static TextStyle heading = GoogleFonts.urbanist(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColor.neutral900,
  );
  static TextStyle subtitle = GoogleFonts.urbanist(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColor.neutral500,
  );
}
