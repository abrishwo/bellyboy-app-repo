import 'package:flutter/material.dart';

class ResponsivenessController {
  static const double breakpointSmall = 500.0;
  static const double breakpointMedium = 700.0;

  static bool isSmallScreen(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < breakpointSmall;
  }

  static bool isMediumScreen(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= breakpointSmall && screenWidth < breakpointMedium;
  }

  static bool isLargeScreen(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= breakpointMedium;
  }

  
}
