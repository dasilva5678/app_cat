import 'package:app_cat/presentation/pages/details%20cat/page/details_cat.dart';
import 'package:get/get.dart';
import 'package:app_cat/presentation/pages/initial%20page/page/initial_page.dart';
import 'package:app_cat/presentation/pages/login/page/login_page.dart';
import 'package:app_cat/presentation/pages/register/page/register_page.dart';

import '../../presentation/pages/home/page/home_page.dart';
import '../../presentation/pages/splash screen/page/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => SplashScreen(),
      name: "/splashScreen",
    ),
    GetPage(
      page: () => LoginPage(),
      name: "/loginPage",
    ),
    GetPage(
      page: () => InitialPage(),
      name: "/initialPage",
    ),
    GetPage(
      page: () => RegisterPage(),
      name: "/registerPage",
    ),
    GetPage(
      page: () => HomePage(),
      name: "/homePage",
    ),
    GetPage(
      page: () => DetailsCat(),
      name: "/",
    ),
  ];
}

abstract class PageRoutes {
  static const String splashScreen = "/splashScreen";
  static const String loginPage = "/loginPage";
  static const String initialPage = "/initialPage";
  static const String registerPage = "/registerPage";
  static const String homePage = "/homePage";
  static const String detailsCat = "/detailsCat";
}
