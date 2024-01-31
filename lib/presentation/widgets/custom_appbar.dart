import 'package:flutter/material.dart';
import 'package:app_cat/flavors.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({Key? key})
      : super(
          key: key,
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            centerTitle: true,
            title: CircleAvatar(
              maxRadius: 25,
              child: ClipOval(
                child: Image.asset(
                  // alignment: Alignment.center,
                  FlavorManager.imageAppBar, height: 80,
                ),
              ),
            ),
            backgroundColor: FlavorManager.color,
          ),
        );
}
