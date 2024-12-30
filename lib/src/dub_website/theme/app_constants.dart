import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const double aMinDesktopWidth = 600.0;

  static double aEndHorizontalPadding = 32.0.sp;
  static double aEndVerticalPadding = 24.0.sp;

  static double a8SpPadding = 8.0.sp;
  static double a12SpPadding = 12.0.sp;
  static double a16SpPadding = 16.0.sp;
  static double a20SpPadding = 20.0.sp;
  static double a24SpPadding = 24.0.sp;
  static double a28SpPadding = 28.0.sp;
  static double a32SpPadding = 32.0.sp;

  static double aButton1Border = 20.0.sp;
  static double aButton2Border = 28.0.sp;

  static double aMinimumButtonHeight = 32.0;

  static BoxShadow aBox1Shadow = BoxShadow(
    color: AppColors.lightShadow,
    blurRadius: 0.5,
    spreadRadius: 0.5,
  );

  static BoxBorder aBox1Border = Border.all(
    color: AppColors.lightBorder,
    width: 1.0,
  );

  static BorderRadius aBox1BorderRadius =
      BorderRadius.circular(AppConstants.aButton1Border);
  static BorderRadius aButton1BorderRadius =
      BorderRadius.circular(AppConstants.aButton2Border);
}
