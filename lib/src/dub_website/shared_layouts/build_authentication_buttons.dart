import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/shared_layouts/app_text_button.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BuildAuthenticationButtons extends StatelessWidget {
  const BuildAuthenticationButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.isTablet
        ? Column(
            children: [
              _buildSignupButton(),
              SizedBox(height: AppConstants.a8SpPadding),
              _buildLoginButton(),
            ],
          )
        : context.isDesktop
            ? Row(
                children: [
                  _buildLoginButton(),
                  SizedBox(width: AppConstants.a8SpPadding),
                  _buildSignupButton(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildSignupButton(),
                  SizedBox(width: AppConstants.a8SpPadding),
                  _buildLoginButton(),
                ],
              );
  }

  AppTextButton _buildSignupButton() {
    return AppTextButton(
      onPressed: () {
        debugPrint('sign up');
      },
      backgroundColor: AppColors.secondaryButton,
      text: 'Sign Up',
      textStyle: AppTextStyles.onButtonText(AppColors.onSecondaryButtonText),
    );
  }

  AppTextButton _buildLoginButton() {
    return AppTextButton(
      onPressed: () {
        debugPrint('log in');
      },
      backgroundColor: AppColors.ghostButton,
      text: 'Log in',
      textStyle: AppTextStyles.onButtonText(AppColors.onGhostButtonText),
    );
  }
}
