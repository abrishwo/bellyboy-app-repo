import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FindEmailController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void findEmail() {
    /* 
    %%%%%%%%%%%%%%%%%%%% Note %%%%%%%%%%%%%%%%%%%%
    we can implement with simple logic, 
    however this logic should be modified 
    with standard security layers for the production.
    
     */
     /* 
    %%%%%%%%%%%%%%%%%%%% LOGIC %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    user will send a server request with his/her registered security questions 
    =>or phone, or any valid ids and current password.
    => then the server will return the corresponding user details.
    => if user exists: 
    |------redirect to change email change screen
    => else:
    |-------do nothing, rather render the call to action( Sign up now)
    
     */

    
  }
}
