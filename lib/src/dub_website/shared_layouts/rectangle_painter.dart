import 'package:design_playground/src/dub_website/theme/app_colors.dart';
import 'package:design_playground/src/dub_website/theme/app_constants.dart';
import 'package:flutter/material.dart';

class RRectanglePainter extends CustomPainter {
  RRectanglePainter({super.repaint});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.placeholder
      ..style = PaintingStyle.fill;

    final roundRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        Radius.circular(AppConstants.aCard1Border));

    canvas.drawRRect(roundRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
