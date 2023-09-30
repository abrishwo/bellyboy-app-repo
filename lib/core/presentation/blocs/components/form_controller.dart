import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isPasswordHidden = true.obs;
  var isEmailValid = false.obs;
  var isPasswordStrong = false.obs;
  var currentTextField = 'email'.obs;

  //change current field
  void changeCurrentField(String nextFieldName){
    currentTextField.value = nextFieldName;
  }
  // Validate email format
  bool validateEmail(String email) {
  
      /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       - Define a regular expression pattern for a valid email.
      |----The email must contain @,
      |----email must have valid domain name, 
      |----and must have valid user name with minimum characters.
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  
    final _emailPattern = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  
    if(_emailPattern.hasMatch(email)){
      isEmailValid.value = true;
      return true;
    }

    return false; 
  }

  // Validate password
  bool validatePassword(String password) {
      /* %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       - Define a regular expression pattern for a strong password.
      |----The password must contain at least one lowercase letter,
      |----one uppercase letter, one digit, one special character, 
      |----and be at least 8 characters long.
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% */
  final pattern = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$';
  final regExp = RegExp(pattern);
  if(regExp.hasMatch(password)){
    isPasswordStrong.value=true;
    return true;
  }
    return false; 
  }

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

String getButtonLabel(){
  if(isEmailValid.value 
      && isPasswordStrong.value
      && (currentTextField.value=='submit')) 
      {
        return 'Login';
      }
    else if(currentTextField.value=='email')
    {
      if(!isEmailValid.value){
        return 'Enter your e-mail address';
      }else{
        return 'Next';
      }
    }
    else if(currentTextField.value=='password'){
        if(!isPasswordStrong.value){
          return 'Enter Password';
        }else{
          changeCurrentField('submit');
          return 'Login';
        }
      }
    

  return 'Enter your e-mail address';
}


Color getButtonBgColor(){
  Color _invalidInputColor = Colors.grey.withOpacity(0.6);
  Color _validInputColor = Colors.black;
    if(isEmailValid.value 
      && isPasswordStrong.value
      && (currentTextField.value=='submit')) 
      {
        return _validInputColor;
      }
    else if(currentTextField.value=='email')
    {
      if(!isEmailValid.value){
        return _invalidInputColor;
      }else{
        return _validInputColor;
      }
    }
    else if(currentTextField.value=='password'){
        if(!isPasswordStrong.value){
          return _invalidInputColor;
        }else{
          changeCurrentField('submit');
          return _validInputColor;
        }
      }
    

  return _invalidInputColor;
}
}
