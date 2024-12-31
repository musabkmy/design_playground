import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/data/app_sections.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_dub_soc.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_headline_label.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_hero_layout.dart';
import 'package:design_playground/src/dub_website/models/section.dart';
import 'package:design_playground/src/dub_website/shared_layouts/app_text_button.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildSectionsLayout extends StatelessWidget {
  const BuildSectionsLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: appSections.map((section) {
              return Padding(
                padding: EdgeInsets.only(bottom: AppConstants.a8SpPadding),
                child: buildTabItem(section, context),
              );
            }).toList(),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: AppConstants.aMinimumButtonHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.tertiaryButton,
                  borderRadius: AppConstants.aBox1BorderRadius,
                  border: AppConstants.aBox1Border,
                  boxShadow: [AppConstants.aBox1Shadow],
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: AppConstants.a24SpPadding),
                child: Wrap(
                  spacing: AppConstants.a32SpPadding,
                  children: appSections.map((section) {
                    return buildTabItem(section, context);
                  }).toList(),
                ),
              ),
              context.isTablet
                  ? AppConstants.a8SpPadding.verticalSpace
                  : AppConstants.a48SpPadding.verticalSpace,
              BuildDubSOC(),
              context.isTablet
                  ? AppConstants.a48SpPadding.verticalSpace
                  : AppConstants.a8SpPadding.verticalSpace,
              BuildHeadlineLabel(),
              AppConstants.a24SpPadding.verticalSpace,
              BuildMainActions(),
              AppConstants.a48SpPadding.verticalSpace,
              BuildHeroLayout(),
            ],
          );
  }

  Widget buildTabItem(Section section, BuildContext context) {
    return context.isMobile
        ? SizedBox(
            width: double.maxFinite,
            child: TextButton(
                style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    foregroundColor: AppColors.transparent),
                onPressed: () =>
                    Navigator.pushNamed(context, section.routeName),
                child: Text(
                  section.title,
                  style: AppTextStyles.onTapAction(section.isClicked),
                )),
          )
        : Text.rich(
            TextSpan(
                text: section.title,
                style: AppTextStyles.onTapAction(section.isClicked),
                recognizer: TapGestureRecognizer()
                  ..onTap =
                      () => Navigator.pushNamed(context, section.routeName)),
          );
  }
}

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
