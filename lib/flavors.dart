import 'package:flutter/material.dart';

enum Flavor {
  hom,
  prod,
}

class FlavorManager {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.hom:
        return 'Cats App HML';
      case Flavor.prod:
        return 'Cats App';
      default:
        return 'title';
    }
  }

  static String get imageAppBar {
    switch (appFlavor) {
      case Flavor.hom:
        return "assets/images/cat_pink.png";
      case Flavor.prod:
        return "assets/images/cat_cute.png";
      default:
        return "assets/images/cat_cute.png";
    }
  }

  static Color get color {
    switch (appFlavor) {
      case Flavor.hom:
        return Color(Colors.grey.shade300.value);
      case Flavor.prod:
        return Color(Colors.pink.shade900.value);
      default:
        return Color(Colors.pink.value);
    }
  }
}
