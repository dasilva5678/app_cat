import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:app_cat/core/routes/named_routes.dart';
import 'package:app_cat/presentation/widgets/custom_button.dart';
import 'package:app_cat/presentation/widgets/custom_text_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/gato_sem_fundo.png"),
              ),
              form(),
              SizedBox(
                height: 40,
              ),
              button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        CustomTextForm(
          hintStyle: TextStyle(color: Colors.grey.shade500),
          hintText: "E-mail",
          inputHeight: 50,
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextForm(
          hintText: "Senha",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          inputHeight: 50,
        ),
      ],
    );
  }
  Widget button(){
    return  CustomButton(
          title: "Entrar",
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
        );
  }
}
