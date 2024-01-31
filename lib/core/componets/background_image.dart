import 'package:flutter/material.dart';

class BackgroundImagem extends StatefulWidget {
  List<Widget> children = [];
  String image;
  BackgroundImagem({
    Key? key,
    required this.children,
    required this.image,
  }) : super(key: key);

  @override
  State<BackgroundImagem> createState() => _BackgroundImagemState();
}

class _BackgroundImagemState extends State<BackgroundImagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            widget.image,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: widget.children,
            ),
          ),
        ],
      ),
    );
  }
}
