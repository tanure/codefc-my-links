import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mylinksfc/constantes.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Fundo extends StatelessWidget {
  final Widget child;
  const Fundo({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Esse size nos proporcional o tamanho total da tela

    double fatorDeConversaoVertical = .65;
    double margemNoTopo = 0;
    if (kIsWeb) {
      fatorDeConversaoVertical = .60;
      margemNoTopo = 10;
    }

    return Container(
      width: size.width,
      height: size.height,
      color: kCorSecudaria.withOpacity(.7),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: margemNoTopo),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: SvgPicture.asset(
                    'assets/images/fundocampoverde.svg',
                    width: size.width * .45,
                    height: size.height * fatorDeConversaoVertical,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
