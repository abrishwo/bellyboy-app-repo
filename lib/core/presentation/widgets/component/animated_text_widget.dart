import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  final String text;
  final Key key;

  AnimatedTextWidget({
    required this.text,
    required this.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: Text(
        text,
        key: key,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.red, // Customize the color as needed
        ),
      ),
    );
  }
}
