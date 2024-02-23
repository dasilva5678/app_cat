import 'package:app_cat/core/styles/app_color.dart';
import 'package:app_cat/core/utils/alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class OpenWebView {
  Future<dynamic> wikipediaUrl(
      {required String url, required String message}) async {
    await FlutterWebBrowser.openWebPage(url: url);
  }
}
