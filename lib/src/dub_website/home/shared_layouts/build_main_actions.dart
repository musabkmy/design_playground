import 'package:design_playground/src/dub_website/shared_layouts/app_text_button.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildMainActions extends StatelessWidget {
  const BuildMainActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: AppConstants.a12SpPadding,
      children: [
        AppTextButton(
            onPressed: () {},
            backgroundColor: AppColors.secondaryButton,
            largeButton: true,
            text: 'Start for Free',
            textStyle:
                AppTextStyles.onButtonText(AppColors.onSecondaryButtonText)),
        AppTextButton(
            onPressed: () {},
            backgroundColor: AppColors.primaryButton,
            largeButton: true,
            text: 'Get a Demo',
            textStyle:
                AppTextStyles.onButtonText(AppColors.onPrimaryButtonText)),
      ],
    );
  }
}
