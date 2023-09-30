import 'package:flutter/material.dart';
// Create an extension for double values to calculate responsive font size
extension DoubleExtension on double {
  double rf(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Define a base font size (adjust as needed)
    const double baseFontSize = 16.0;

    // Calculate the responsive font size
    return this * (screenWidth / 375); // 375 is a reference screen width
  }
}