import 'package:design_playground/core/extensions/build_context.dart';
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
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              //desktop
              return GestureDetector(
                onTap: () {
                  debugPrint(
                      'width: ${context.width}, height: ${context.heigh}');
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.kEndHorizontalPadding,
                      vertical: AppConstants.kEndVerticalPadding),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // stops: [0.5, 1.0],
                      colors: [
                        AppColors.backgroundDreamyPurple,
                        AppColors.backgroundSoftPinkGlow,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('dub', style: AppTextStyles.logo),
                        ],
                      )
                    ],
                  ),
                ),
              );
            } else {
              //mobile
              return Column();
            }
          });
        },
      ),
    );
  }
}
