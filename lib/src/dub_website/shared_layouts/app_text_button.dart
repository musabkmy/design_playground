import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
    this.largeButton = false,
  });
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;
  final bool largeButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.aMinimumButtonHeight,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: backgroundColor,
          // splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
          minimumSize:
              Size(largeButton ? 92 : 84, AppConstants.aMinimumButtonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: AppConstants.aButton1BorderRadius,
          ),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
