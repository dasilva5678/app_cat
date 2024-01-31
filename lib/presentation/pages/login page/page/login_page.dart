import 'package:flutter/material.dart';
import 'package:search_address/presentation/widgets/custom_text_form.dart';

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
}
