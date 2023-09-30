import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:lottie/lottie.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // Ensure that the animationController starts immediately.
    animationController.forward();

    // Navigate to the next screen after the animation is completed.
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Get.offNamed('/login');
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();

  }
}
