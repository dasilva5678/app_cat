import 'package:app_cat/core/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController CustomGetSnackbar({
  String message = "",
  String title = "",
  Widget? icon = const Icon(Icons.monetization_on, color: Colors.blueGrey),
  Color? overlayColor = Colors.white,
  bool? shouldIconPulse = true,
  SnackPosition? snackPosition = SnackPosition.TOP,
  Color? backgroundColor = AppColors.lead,
  double? barBlur = 20,
  int? duration = 5,
}) {
  return Get.rawSnackbar(
    borderColor: Colors.white,
    title: title,
    message: message,
    icon: icon,
    overlayColor: overlayColor,
    shouldIconPulse: shouldIconPulse!,
    snackPosition: snackPosition!,
    backgroundColor: backgroundColor!,
    barBlur: barBlur!,
    duration: Duration(seconds: duration!),
  );
}

void showErrorSnackbar(String key, dynamic errors) async {
  errors.forEach((key, errorList) {
    String errorMessage = errorList[0];
    CustomGetSnackbar(
      message: errorMessage,
      title: "Erro ao criar conta.",
      icon: Icon(
        Icons.close,
      ),
      snackPosition: SnackPosition.TOP,
      overlayColor: Colors.white,
      backgroundColor: AppColors.gray,
    );
  });
}
