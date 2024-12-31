import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/shared_layouts/app_text_button.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_icons.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildHeroLayout extends StatelessWidget {
  const BuildHeroLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (context.width * .55).spMax,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.a8SpPadding),
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: AppConstants.aCard1BorderRadius,
      ),
      child: Column(children: [
        BuildHeroItem(
          child: Text.rich(TextSpan(children: [
            WidgetSpan(
                child: AppIcons.linkIcons,
                alignment: PlaceholderAlignment.middle),
            TextSpan(
              text: ' app.dub.co/register',
              style: AppTextStyles.hint1,
            )
          ])),
        ),
        BuildHeroItem(
            child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildIconAvatar(
              size: 42,
              icon: AppIcons.whatshot,
            ),
            AppConstants.a8SpPadding.horizontalSpace,
            Column(
              spacing: AppConstants.a8SpPadding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: AppConstants.a8SpPadding,
                  children: [
                    BuildIconAvatar(size: 26, icon: AppIcons.copy),
                    BuildIconAvatar(size: 26, icon: AppIcons.qrCode),
                    BuildNumOfClicksLayout(),
                  ],
                ),
                Text.rich(
                  TextSpan(children: [
                    WidgetSpan(child: AppIcons.goTo),
                    TextSpan(
                      text: ' app.dub.co/register',
                      style: AppTextStyles.hint1,
                    ),
                  ]),
                ),
              ],
            ),
            Spacer(),
            AppIcons.moreInfo,
          ],
        ))
      ]),
    );
  }
}

class BuildNumOfClicksLayout extends StatelessWidget {
  const BuildNumOfClicksLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppConstants.a2SpPadding,
          horizontal: AppConstants.a8SpPadding),
      decoration: BoxDecoration(
        color: AppColors.outlinedButton,
        border: AppConstants.aBox1Border,
        borderRadius: AppConstants.aCard1BorderRadius,
      ),
      child: Text.rich(
        TextSpan(children: [
          WidgetSpan(
              child: AppIcons.click, alignment: PlaceholderAlignment.middle),
          TextSpan(text: ' 54.1K clicks', style: AppTextStyles.hint2),
        ]),
      ),
    );
  }
}

class BuildHeroItem extends StatelessWidget {
  const BuildHeroItem({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(AppConstants.a8SpPadding),
        margin: EdgeInsets.symmetric(vertical: AppConstants.a12SpPadding),
        decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: AppConstants.aCard1BorderRadius,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(80),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ]),
        child: child);
  }
}

class BuildIconAvatar extends StatelessWidget {
  const BuildIconAvatar({super.key, required this.size, required this.icon});
  final double size;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: AppColors.outlinedButton,
        border: AppConstants.aBox1Border,
        shape: BoxShape.circle,
      ),
      child: icon,
    );
  }
}
