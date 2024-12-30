import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/data/app_sections.dart';
import 'package:design_playground/src/dub_website/models/section.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_icons.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DubHome extends StatelessWidget {
  static const routeName = '/dub_home';

  const DubHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return context.isDesktop || context.isTablet
              ? AppPageStructure(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildLogo(),
                          BuildSectionsLayout(),
                          BuildAuthenticationButtons(),
                        ],
                      ),
                      SizedBox(
                        height: AppConstants.a28SpPadding,
                      ),
                      Container(
                        width: (context.width * .5).spMax,
                        height: AppConstants.aMinimumButtonHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.tertiaryButton,
                          borderRadius: AppConstants.aBox1BorderRadius,
                          border: AppConstants.aBox1Border,
                          boxShadow: [AppConstants.aBox1Shadow],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConstants.a20SpPadding),
                        child: Text.rich(TextSpan(
                            text: 'Dub is now SOC 2 Type II compliant ',
                            style: AppTextStyles.onButtonText(
                                AppColors.onTertiaryButtonText),
                            children: [
                              WidgetSpan(child: AppIcons.forwardArrow)
                            ])),
                      )
                    ],
                  ),
                )
              :
              //mobile
              AppPageStructure(
                  withPadding: false,
                  child: Scaffold(
                    backgroundColor: AppColors.transparent,
                    appBar: AppBar(
                      forceMaterialTransparency: true,
                      centerTitle: false,
                      title: buildLogo(),
                    ),
                    drawer: Drawer(
                      backgroundColor: AppColors.transparent,
                      child: BuildHomeDrawer(),
                    ),
                  ));
        },
      ),
    );
  }

  Text buildLogo() => Text('dub', style: AppTextStyles.logo());
}

class BuildHomeDrawer extends StatelessWidget {
  const BuildHomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width * 0.4,
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.a16SpPadding,
            vertical: AppConstants.a32SpPadding),
        decoration: BoxDecoration(
          color: AppColors.card,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // mobile
            BuildAuthenticationButtons(),
            SizedBox(height: AppConstants.a32SpPadding),
            BuildSectionsLayout(),
          ],
        ));
  }
}

class AppPageStructure extends StatelessWidget {
  const AppPageStructure(
      {super.key, required this.child, this.withPadding = true});
  final Widget child;
  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: withPadding
          ? EdgeInsets.symmetric(
              horizontal: AppConstants.aEndHorizontalPadding,
              vertical: AppConstants.aEndVerticalPadding)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // stops: [0.5, 1.0],
          colors: [
            AppColors.backgroundDreamyPurple,
            AppColors.backgroundSoftPinkGlow,
          ],
        ),
      ),
      child: child,
    );
  }
}

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

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
  });
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;

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
          minimumSize: Size(84, AppConstants.aMinimumButtonHeight),
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
        : Container(
            height: AppConstants.aMinimumButtonHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.tertiaryButton,
              borderRadius: AppConstants.aBox1BorderRadius,
              border: AppConstants.aBox1Border,
              boxShadow: [AppConstants.aBox1Shadow],
            ),
            padding:
                EdgeInsets.symmetric(horizontal: AppConstants.a20SpPadding),
            child: Wrap(
              spacing: AppConstants.a32SpPadding,
              children: appSections.map((section) {
                return buildTabItem(section, context);
              }).toList(),
            ),
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
