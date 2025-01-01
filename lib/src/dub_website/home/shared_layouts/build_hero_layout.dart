import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/shared_layouts/rectangle_painter.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_icons.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildHeroLayout extends StatelessWidget {
  const BuildHeroLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (context.width * .55).spMax,
      margin: EdgeInsets.symmetric(
          horizontal: context.isDesktop ? 0 : AppConstants.a24SpPadding),
      padding: EdgeInsets.symmetric(
          vertical: AppConstants.a8SpPadding,
          horizontal: AppConstants.a8SpPadding),
      constraints: BoxConstraints(maxWidth: 600),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: AppConstants.aCard1BorderRadius,
      ),
      child: Column(children: [
        BuildRegisterLinkLayout(),
        BuildItemWrapLayout(),
        ...[1, 2, 3].map((_) => BuildItemWrapLayout(isSkeleton: true)),
        BuildCreateFreeAccount(),
      ]),
    );
  }
}

class BuildCreateFreeAccount extends StatelessWidget {
  const BuildCreateFreeAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildHeroItem(
        child: Text.rich(
            style: AppTextStyles.body2(AppColors.primaryText),
            TextSpan(
                text: 'Want to claim your links, edit them, or view their ',
                children: [
                  TextSpan(
                      text: 'analytics',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('free account');
                        },
                      style: AppTextStyles.highlightBody2),
                  TextSpan(text: '?\n'),
                  TextSpan(
                      text: 'Create a free account on Dub',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('free account');
                        },
                      style: AppTextStyles.highlightBody2),
                  TextSpan(text: ' to get started')
                ])));
  }
}

class BuildItemWrapLayout extends StatelessWidget {
  const BuildItemWrapLayout({
    super.key,
    this.isSkeleton = false,
  });
  final bool isSkeleton;

  @override
  Widget build(BuildContext context) {
    return BuildHeroItem(
        child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isSkeleton
            ? CircleAvatar(
                radius: AppConstants.avatarRadius,
                backgroundColor: AppColors.placeholder)
            : BuildIconAvatar(
                size: AppConstants.avatarHW,
                icon: AppIcons.whatshot,
              ),
        AppConstants.a12SpPadding.horizontalSpace,
        Column(
          spacing: AppConstants.a8SpPadding,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: AppConstants.a8SpPadding,
              children: isSkeleton
                  ? [
                      CustomPaint(
                        size: Size((150).spMax, AppConstants.rRectSize * .9),
                        painter: RRectanglePainter(),
                      ),
                      CircleAvatar(
                          radius: AppConstants.smallAvatarRadius,
                          backgroundColor: AppColors.placeholder),
                      CustomPaint(
                        size: Size((100).spMax, AppConstants.rRectSize * .9),
                        painter: RRectanglePainter(),
                      ),
                    ]
                  : [
                      BuildIconAvatar(
                          size: AppConstants.smallAvatarHW,
                          icon: AppIcons.copy),
                      BuildIconAvatar(
                          size: AppConstants.smallAvatarHW,
                          icon: AppIcons.qrCode),
                      BuildNumOfClicksLayout(),
                    ],
            ),
            isSkeleton
                ? CustomPaint(
                    size: Size((250).spMax, AppConstants.rRectSize * .8),
                    painter: RRectanglePainter(),
                  )
                : Text.rich(
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
        isSkeleton ? SizedBox() : AppIcons.moreInfo,
      ],
    ));
  }
}

class BuildNumOfClicksLayout extends StatelessWidget {
  const BuildNumOfClicksLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.rRectSize,
      padding: EdgeInsets.symmetric(horizontal: AppConstants.a8SpPadding),
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

class BuildRegisterLinkLayout extends StatelessWidget {
  const BuildRegisterLinkLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildHeroItem(
      child: Text.rich(TextSpan(children: [
        WidgetSpan(
            child: AppIcons.linkIcons, alignment: PlaceholderAlignment.middle),
        TextSpan(
          text: ' app.dub.co/register',
          style: AppTextStyles.hint1,
        )
      ])),
    );
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

class BuildHeroItem extends StatelessWidget {
  const BuildHeroItem({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(AppConstants.a8SpPadding),
        margin: EdgeInsets.symmetric(vertical: AppConstants.a4SpPadding),
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
