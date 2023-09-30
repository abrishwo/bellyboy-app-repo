import 'package:get/get.dart';

import '../../../data/models/models.dart';

class ProfileController extends GetxController {
   RxList<User> users = <User>[].obs;

  @override
  void onInit() {
    super.onInit();

    users.add(User(
      id: 0,
      name: '',
      email: '',
      password: '',
      age: 0,
      gender: '',
    ));
  }
}
