import 'package:app/core/presentation/blocs/blocs.dart';
import 'package:get/get.dart';
import 'package:app/core/presentation/screens/splash_screen.dart';
import 'package:app/core/presentation/screens/login_screen.dart';
import 'package:app/core/presentation/screens/find_email_screen.dart';
import 'package:app/core/presentation/screens/find_password_screen.dart';
import 'package:app/core/presentation/screens/home_screen.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/find_email', page: () => FindEmailPage()),
    GetPage(name: '/find_password', page: () => FindPasswordPage()),
    GetPage(name: '/home', page: () => HomePage()),
  ];

  static final ThemeController themeController = Get.put(ThemeController());
}
