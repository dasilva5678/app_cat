import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:app_cat/core/routes/named_routes.dart';
import 'package:app_cat/presentation/widgets/custom_button.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/images/gato_sem_fundo.png"),
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: const Center(
                child: Text(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    "Explore o fascinante mundo dos felinos, onde cada miado conta uma história, cada ronronar aquece o coração e cada rabo erguido é uma expressão única de amor e curiosidade. Bem-vindo ao universo encantador dos gatos, onde a cada patinha levantamos juntos o véu de mistério que envolve esses adoráveis amigos peludos."),
              ),
            ),
            form(),
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        CustomButton(
          title: "Login",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          onPressed: () {
            Get.toNamed(PageRoutes.loginPage);
          },
          maximumSize: const Size(double.infinity, 45),
          minimumSize: const Size(double.infinity, 40),
          backgroundColor: Colors.grey.shade200,
          borderRadius: 20,
          image: SvgPicture.asset(
            "assets/images/pata.svg",
            width: 20,
            height: 20,
            color: Colors.grey.shade800,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CustomButton(
          title: "Register",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          onPressed: () {
            Get.toNamed(PageRoutes.registerPage);
          },
          maximumSize: const Size(double.infinity, 45),
          minimumSize: const Size(double.infinity, 40),
          backgroundColor: Colors.grey.shade200,
          borderRadius: 20,
          image: SvgPicture.asset(
            "assets/images/pata.svg",
            width: 20,
            height: 20,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}
