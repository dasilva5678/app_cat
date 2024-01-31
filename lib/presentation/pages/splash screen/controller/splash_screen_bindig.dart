
import 'dart:io';

import 'package:get/get.dart';


class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(ConfigColorsAmbientesController());
    // Get.put(SplashScreen());
    // Get.put(HttpClient());
       Get.lazyPut(
        () =>(HttpClient()));
  }
}
