import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildHeadlineLabel extends StatelessWidget {
  const BuildHeadlineLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Short Links With',
          style: AppTextStyles.headline1,
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                AppColors.gradient1Text,
                AppColors.gradient2Text,
                AppColors.gradient3Text,
              ],
              stops: [0.1, 0.5, 0.9],
            ).createShader(bounds);
          },
          child: Text(
            'Superpowers',
            style: AppTextStyles.headline1.copyWith(color: Colors.white),
          ),
        ),
        Container(
          width: context.width * .6,
          margin: EdgeInsets.only(top: AppConstants.a16SpPadding),
          constraints: BoxConstraints(maxWidth: 400),
          child: Text(
            'Dub.co is the open-source link management infrastructure for modern marketing teams.',
            style: AppTextStyles.body1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
