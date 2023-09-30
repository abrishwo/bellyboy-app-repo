import 'package:app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  void Function()? visibilityToggler;
  final String labelText;
  bool isPassword;
  bool isObscured;
  final TextEditingController controller;
  final String? errorTextMsg;

   ReusableTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged, 
     this.isObscured=false,
    required this.labelText,
    this.isPassword=false,
    this.visibilityToggler,
    this.errorTextMsg
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      controller: controller,
      obscureText: isObscured,
      decoration: InputDecoration(
        
        hintText: hintText,

        suffixIcon: isPassword?IconButton(
                  icon: Icon( 
                      isObscured?Icons.visibility_off: Icons.visibility
                    ),
                  onPressed: visibilityToggler,

                ):null,
                focusColor: Palletes.PRIMARYBUTTONCOLOR,
                errorText: errorTextMsg
      ),
      onChanged: onChanged,
     
      autofocus: true,
      
       
    );
  }
}
