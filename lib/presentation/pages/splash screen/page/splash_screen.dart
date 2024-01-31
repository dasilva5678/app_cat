import 'package:flutter/material.dart';
import 'package:app_cat/core/componets/background_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImagem(
        image: 'assets/map.jpg',
        children: const [],
      ),
    );
  }
}
