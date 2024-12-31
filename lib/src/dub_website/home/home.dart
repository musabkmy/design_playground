import 'package:design_playground/core/extensions/build_context.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_dub_soc.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_headline_label.dart';
import 'package:design_playground/src/dub_website/home/shared_layouts/build_sections_layout.dart';
import 'package:design_playground/src/dub_website/shared_layouts/build_authentication_buttons.dart';
import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:design_playground/src/dub_website/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

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
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: AppConstants.a12SpPadding),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildLogo(),
                        Spacer(),
                        BuildSectionsLayout(),
                        Spacer(),
                        BuildAuthenticationButtons(),
                      ],
                    ),
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
                      actions: [
                        BuildDubSOC(),
                        SizedBox(width: AppConstants.aEndHorizontalPadding),
                      ],
                    ),
                    drawer: Drawer(
                      backgroundColor: AppColors.transparent,
                      child: BuildHomeDrawer(),
                    ),
                    body: ListView(
                      padding: EdgeInsets.only(top: AppConstants.a38SpPadding),
                      children: [
                        BuildHeadlineLabel(),
                        BuildMainActions(),
                      ],
                    ),
                  ));
        },
      ),
    );
  }

  Text buildLogo() => Text('dub', style: AppTextStyles.logo);
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
          ? EdgeInsets.symmetric(horizontal: AppConstants.aEndHorizontalPadding)
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
