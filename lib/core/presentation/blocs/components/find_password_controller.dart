import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FindPasswordController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void findPassword() {
    /* 
    %%%%%%%%%%%%%%%%%%%% Note %%%%%%%%%%%%%%%%%%%%
    we can implement with simple logic, 
    however this logic should be modified 
    with standard security layers for the production.
    
     */
     /* 
    %%%%%%%%%%%%%%%%%%%% LOGIC %%%%%%%%%%%%%%%%%%%%
    user will send a server request with his/her registered email.
    => then the server will return the corresponding user details.
    => if email exists: 
    |------redirect to reset password screen
    => else:
    |-------do nothing, rather render the call to action( Sign up now)
    
     */

    
  }
}
