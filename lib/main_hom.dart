import 'package:app_cat/presentation/pages/home/controller/description_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/named_routes.dart';
import 'flavors.dart';

final GlobalKey<NavigatorState> navigatorKeyy = GlobalKey<NavigatorState>();
void main() async {
  FlavorManager.appFlavor = Flavor.hom;
  WidgetsFlutterBinding.ensureInitialized();
  DescriptionCatsBinding().dependencies();
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
        title: 'Cat App HML',
        theme: ThemeData(
          fontFamily: 'Roboto-Black',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: PageRoutes.initialPage,
        getPages: AppPages.pages,
        navigatorKey: navigatorKey,
      ),
    );
  }
}
