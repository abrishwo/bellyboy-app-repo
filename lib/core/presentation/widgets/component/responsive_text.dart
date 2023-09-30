import 'package:flutter/material.dart';
import 'package:app/core/utils/utils.dart';
class ResponsiveText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  ResponsiveText({
    required this.text,
    this.textColor = Colors.black,
    this.fontSize = 24,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize.rf(context),
        fontWeight: fontWeight,
      ),
    );
  }
}

