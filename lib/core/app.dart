import 'package:app/core/presentation/blocs/blocs.dart';
import 'package:app/core/presentation/screens/find_email_screen.dart';
import 'package:app/core/presentation/screens/find_password_screen.dart';
import 'package:app/core/presentation/screens/home_screen.dart';
import 'package:app/core/presentation/screens/login_screen.dart';
import 'package:app/core/presentation/screens/splash_screen.dart';
import 'package:app/core/routes.dart';
import 'package:app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 


class EntryPointApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Belly Boy',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: AppRoutes.themeController.themeMode.value,
        initialRoute: '/',
        getPages: AppRoutes.routes,
      );
    });
  }
}
