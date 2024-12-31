import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get logo => GoogleFonts.righteous(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        color: Colors.black,
      );

  static TextStyle get headline1 => GoogleFonts.roboto(
        fontSize: 42.spMax,
        fontWeight: FontWeight.bold,
        height: 1.1,
        color: AppColors.primaryText,
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

  static TextStyle get title1 => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryText,
        height: 1.2,
      );

  static TextStyle get body1 => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryText,
        height: 1.2,
      );

  static TextStyle body2(Color color) => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color,
        height: 1.2,
      );

  static TextStyle get highlightBody2 => GoogleFonts.roboto(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        color: AppColors.primaryText,
        height: 1.2,
      );

  static TextStyle get hint1 => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.highlightText,
      );

  static TextStyle get hint2 => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryText,
      );
}
