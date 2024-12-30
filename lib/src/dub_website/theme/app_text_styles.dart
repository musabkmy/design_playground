import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle logo() => GoogleFonts.righteous(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        color: Colors.black,
      );

  static TextStyle onTapAction(bool isClicked) => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: isClicked ? FontWeight.w500 : FontWeight.w400,
        color: AppColors.primaryText,
      );

  static TextStyle onButtonText(Color color) => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color,
      );
}
