import 'package:app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class ReusableTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ReusableTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, 
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w400,
        fontSize: 18.rf(context),
      
      ),),
    );
  }
}
