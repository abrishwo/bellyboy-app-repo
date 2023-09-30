import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final themeMode = Rx<ThemeMode>(ThemeMode.light);

  void toggleTheme() {
    themeMode.value =
        (themeMode.value == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
  }
}