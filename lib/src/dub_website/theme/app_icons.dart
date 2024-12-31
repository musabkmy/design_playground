import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppIcons {
  static const Icon forwardArrow = Icon(
    Icons.arrow_forward_ios_rounded,
    size: 12,
    color: AppColors.onTertiaryButtonText,
  );

  static const Icon linkIcons = Icon(
    Icons.link,
    size: 20,
    color: AppColors.highlightText,
  );

  static const Icon whatshot = Icon(
    Icons.whatshot,
    size: 32,
    color: AppColors.primaryText,
  );

  static const Icon copy = Icon(
    Icons.copy_rounded,
    size: 16,
    color: AppColors.primaryText,
  );
  static const Icon qrCode = Icon(
    Icons.qr_code_2_rounded,
    size: 16,
    color: AppColors.primaryText,
  );
  static const Icon click = Icon(
    Icons.ads_click_rounded,
    size: 16,
    color: AppColors.primaryText,
  );

  static const Icon goTo = Icon(
    Icons.subdirectory_arrow_right_rounded,
    size: 18,
    color: AppColors.highlightText,
  );

  static const Icon moreInfo = Icon(
    Icons.more_vert_rounded,
    size: 24,
    color: AppColors.secondaryButton,
  );
}
