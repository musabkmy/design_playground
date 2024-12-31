import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildFooter extends StatelessWidget {
  const BuildFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Giving superpowers to modern teams at world-class companies',
      style: AppTextStyles.body2(AppColors.highlightText),
      textAlign: TextAlign.center,
    );
  }
}
