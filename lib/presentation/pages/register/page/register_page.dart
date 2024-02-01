// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_cat/core/validators/validator_email.dart';
import 'package:app_cat/core/validators/validator_password.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:app_cat/core/routes/named_routes.dart';
import 'package:app_cat/core/styles/app_color.dart';
import 'package:app_cat/presentation/widgets/custom_appbar.dart';
import 'package:app_cat/presentation/widgets/custom_button.dart';
import 'package:app_cat/presentation/widgets/custom_text_form.dart';

class RegisterPage extends StatefulWidget {
  final bool isSecret;
  const RegisterPage({
    Key? key,
    this.isSecret = false,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nameSocialController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _logradouroController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _estadoController = TextEditingController();
  final TextEditingController _paisController = TextEditingController();
  final TextEditingController _rendaController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool obscurePasswordConfirmation = false;
  bool isObscurePassword = false;

  @override
  void initState() {
    super.initState();
    isObscurePassword = widget.isSecret;
    obscurePasswordConfirmation = widget.isSecret;
  }

  iconObscure(bool isObscure) {
    if (!isObscure) {
      return Icon(
        Icons.visibility,
        color: AppColors.lead,
      );
    } else if (isObscure) {
      return const Icon(
        Icons.visibility_off,
        color: AppColors.lead,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            form(),
            SizedBox(
              height: 40,
            ),
            button(),
          ],
        ),
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        CustomTextForm(
          controller: _nameController,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          hintText: "Nome",
          inputHeight: 50,
          preffix: Icon(Icons.person),
        ),
        CustomTextForm(
          controller: _nameSocialController,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          hintText: "Nome Social",
          inputHeight: 50,
          preffix: Icon(Icons.person),
        ),
        CustomTextForm(
          controller: _emailController,
          hintText: "E-mail",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          inputHeight: 50,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            return Email(value ?? '').validator();
          },
          preffix: Icon(Icons.email),
        ),
        Row(
          children: [
            Expanded(
              flex: 7,
              child: CustomTextForm(
                controller: _cepController,
                hintText: "Cep",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                inputHeight: 50,
                preffix: Icon(Icons.location_on),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CepInputFormatter()
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor preencher o campo de CEP!';
                  }
                  return null;
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: AppColors.pink,
                ),
              ),
            ),
          ],
        ),
        CustomTextForm(
          controller: _logradouroController,
          hintText: "Logradouro",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          inputHeight: 50,
          preffix: Icon(Icons.location_on),
        ),
        CustomTextForm(
          controller: _bairroController,
          hintText: "Bairro",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          inputHeight: 50,
          preffix: Icon(Icons.location_on),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: CustomTextForm(
                controller: _estadoController,
                hintText: "Estado",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                inputHeight: 50,
                preffix: Icon(Icons.location_on),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: CustomTextForm(
                controller: _paisController,
                hintText: "País",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                inputHeight: 50,
                preffix: Icon(Icons.location_on),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: CustomTextForm(
                controller: _rendaController,
                hintText: "Celular",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                inputHeight: 50,
                preffix: Icon(Icons.phone),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter()
                ],
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Favor preencher o campo de celular!';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: CustomTextForm(
                controller: _idadeController,
                hintText: "Idade",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                inputHeight: 50,
                preffix: Icon(Icons.person),
              ),
            ),
          ],
        ),
        CustomTextForm(
          controller: _passwordController,
          hintText: "Senha",
          hintStyle: TextStyle(color: Colors.grey.shade500),
          inputHeight: 50,
          preffix: Icon(
            Icons.lock_clock_outlined,
            color: AppColors.lead,
          ),
          suffix: IconButton(
            onPressed: () {
              setState(
                () {
                  isObscurePassword = !isObscurePassword;
                },
              );
            },
            icon: iconObscure(isObscurePassword),
          ),
          obscureText: isObscurePassword,
          keyboardType: null,
          validator: (value) {
            return Password(value ?? '').validator();
          },
        ),
        CustomTextForm(
          controller: _passwordController,
          hintText: "Confirmação de senha",
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          preffix: Icon(
            Icons.lock_clock_outlined,
            color: AppColors.lead,
          ),
          suffix: IconButton(
            onPressed: () {
              setState(() {
                obscurePasswordConfirmation = !obscurePasswordConfirmation;
              });
            },
            icon: iconObscure(obscurePasswordConfirmation),
          ),
          obscureText: obscurePasswordConfirmation,
          inputHeight: 50,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                value != _passwordController.text) {
              return 'Senhas não conferem!';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget button() {
    return CustomButton(
      title: "Cadastrar",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      onPressed: () {
        Get.toNamed(PageRoutes.homePage);
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
