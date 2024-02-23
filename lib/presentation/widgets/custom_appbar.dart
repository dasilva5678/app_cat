import 'package:app_cat/core/routes/named_routes.dart';
import 'package:flutter/material.dart';
import 'package:app_cat/flavors.dart';
import 'package:get/get.dart';

class CustomAppBar extends PreferredSize {
  final Widget? title;
  final bool centerTitle;
  CustomAppBar({Key? key, this.title, this.centerTitle = true})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            centerTitle: true,
            title: title == null
                ? CircleAvatar(
                    maxRadius: 25,
                    child: ClipOval(
                      child: Image.asset(
                        // alignment: Alignment.center,
                        FlavorManager.imageAppBar, height: 80,
                      ),
                    ),
                  )
                : title,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Get.toNamed(PageRoutes.loginPage);
              },
            ),
            backgroundColor: FlavorManager.color,
          ),
        );
}
