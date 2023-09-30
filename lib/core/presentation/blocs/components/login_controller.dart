import 'dart:convert';
import 'package:get/get.dart';

import '../../../data/models/models.dart';
import '../../../data/data_sources/user.dart';
import '../blocs.dart';

class LoginController extends GetxController {
var isLoggedIn = false.obs;
final ProfileController _profileController = Get.put(ProfileController());
  
  login(String email, String password) {
    final usr =  UserData().login(email, password);
    
    if(usr!=null || usr!='' || usr!=[]||usr!={}){
        // update _profileController.users
        isLoggedIn.value=true;
    }
  }
}
