
import 'dart:io';

import 'package:get/get.dart';


class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
       Get.lazyPut(
        () =>(HttpClient()));
  }
}
