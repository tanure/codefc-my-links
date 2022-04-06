import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.20,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            child: Image.asset(
              "assets/images/cabecalho.jpeg",
              width: size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/logo.png',
                width: double.infinity,
                height: double.infinity,
                scale: .95,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
