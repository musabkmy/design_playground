// import 'package:budget_tracker/config/theme/app_text_styles.dart';
import 'package:flutter/widgets.dart';

extension BuildContextExt on BuildContext {
  double get heigh => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  bool get isMobile => width < 700;
  bool get isTablet => width >= 700 && width < 800;
  bool get isDesktop => width >= 800;

  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;
  bool get isLandscape =>
      MediaQuery.orientationOf(this) == Orientation.landscape;
}
