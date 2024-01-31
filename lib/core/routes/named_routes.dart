import 'package:get/get.dart';
import 'package:search_address/presentation/pages/initial%20page/page/initial_page.dart';

import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/splash screen/page/splash_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      page: () => SplashScreen(),
      name: "/splashScreen",
    ),
    GetPage(
      page: () => HomePage(),
      name: "/login",
    ),
    GetPage(
      page: () => InitialPage(),
      name: "/initialPage",
    ),
  ];
}

abstract class PageRoutes {
  static const String splashScreen = "/splashScreen";
  static const String login = "/login";
  static const String initialPage = "/initialPage";
}
