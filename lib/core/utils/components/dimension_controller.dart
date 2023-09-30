import 'package:flutter/material.dart';

class DimensionController {
  static const double fontSizeSmall = 12.0;
  static const double fontSizeMedium = 16.0;
  static const double fontSizeLarge = 20.0;

  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;

  static const double marginSmall = 8.0;
  static const double marginMedium = 16.0;
  static const double marginLarge = 24.0;

  static double getFontSize(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 500) {
      return fontSizeSmall;
    } else if (screenSize.width < 700) {
      return fontSizeMedium;
    } else {
      return fontSizeLarge;
    }
  }

  static double getPadding(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 500) {
      return paddingSmall;
    } else if (screenSize.width < 700) {
      return paddingMedium;
    } else {
      return paddingLarge;
    }
  }

  static double getMargin(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 500) {
      return marginSmall;
    } else if (screenSize.width < 700) {
      return marginMedium;
    } else {
      return marginLarge;
    }
  }


  static double getProportionateValue(BuildContext context, double value) {
  var screenSize = MediaQuery.of(context).size;
  var screenWidth = screenSize.width;

  // Calculate the proportionate value based on the screen width.
  var proportionateValue = value * (screenWidth / 300.0);

  return proportionateValue;
}

}
