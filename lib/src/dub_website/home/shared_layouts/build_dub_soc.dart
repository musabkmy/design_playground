import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_icons.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildDubSOC extends StatelessWidget {
  const BuildDubSOC({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: context.width * .4,
        constraints: BoxConstraints(minWidth: 250, maxWidth: 300),
        height: AppConstants.aMinimumButtonHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.tertiaryButton,
          borderRadius: AppConstants.aBox1BorderRadius,
          border: AppConstants.aBox1Border,
          boxShadow: [AppConstants.aBox1Shadow],
        ),
        padding: EdgeInsets.symmetric(horizontal: AppConstants.a20SpPadding),
        child: Text.rich(TextSpan(
            text: 'Dub is now SOC 2 Type II compliant ',
            style: AppTextStyles.onButtonText(AppColors.onTertiaryButtonText),
            children: [WidgetSpan(child: AppIcons.forwardArrow)])),
      ),
    );
  }
}
