import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const double aMinDesktopWidth = 600;

  static double aEndHorizontalPadding = 32.sp;
  static double aEndVerticalPadding = 24.sp;

  static double a2SpPadding = 2.sp;
  static double a4SpPadding = 4.sp;
  static double a8SpPadding = 8.sp;
  static double a12SpPadding = 12.sp;
  static double a16SpPadding = 16.sp;
  static double a20SpPadding = 20.sp;
  static double a24SpPadding = 24.sp;
  static double a28SpPadding = 28.sp;
  static double a32SpPadding = 32.sp;
  static double a38SpPadding = 38.sp;
  static double a42SpPadding = 42.sp;
  static double a48SpPadding = 48.sp;

  static double aButton1Border = 20.sp;
  static double aButton2Border = 28.sp;
  static double aCard1Border = 8.sp;
  static double aCard2Border = 4.sp;

  static double aMinimumButtonHeight = 32;

  static BoxShadow aBox1Shadow = BoxShadow(
    color: AppColors.lightShadow,
    blurRadius: 0.5,
    spreadRadius: 0.5,
  );

  static BoxBorder aBox1Border = Border.all(
    color: AppColors.lightBorder,
    width: 1,
  );

  static BorderRadius aBox1BorderRadius =
      BorderRadius.circular(AppConstants.aButton1Border);
  static BorderRadius aButton1BorderRadius =
      BorderRadius.circular(AppConstants.aButton2Border);
  static BorderRadius aCard1BorderRadius =
      BorderRadius.circular(AppConstants.aCard1Border);
  static BorderRadius aCard2BorderRadius =
      BorderRadius.circular(AppConstants.aCard2Border);
}
