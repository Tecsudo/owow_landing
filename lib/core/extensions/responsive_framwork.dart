import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension XResponsiveBuildContext on BuildContext {
  bool get isDisplayLargeThanTablet =>
      ResponsiveBreakpoints.of(this).largerThan('LARGE_TABLET');

  bool get isDisplayLargeThanDesktop =>
      ResponsiveBreakpoints.of(this).largerThan(DESKTOP);
}

extension XResponsiveFontSize on BuildContext {
  double get titleScaleFactor => isDisplayLargeThanTablet ? 1 : 0.8;
}

extension XMediaQuery on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}
