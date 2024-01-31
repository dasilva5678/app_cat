import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_address/core/routes/named_routes.dart';

import 'flavors.dart';

final GlobalKey<NavigatorState> navigatorKeyy = GlobalKey<NavigatorState>();
void main() async {
  FlavorManager.appFlavor = Flavor.prod;
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

final navigatorKey = GlobalKey<NavigatorState>();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: GetMaterialApp(
        title: 'Cat App',
        theme: ThemeData(
          fontFamily: 'Segoe-UI',
          primaryColor: Colors.pinkAccent,
          scaffoldBackgroundColor: Colors.white,
          canvasColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: PageRoutes.initialPage,
        getPages: AppPages.pages,
        navigatorKey: navigatorKey,
      ),
    );
  }
}
