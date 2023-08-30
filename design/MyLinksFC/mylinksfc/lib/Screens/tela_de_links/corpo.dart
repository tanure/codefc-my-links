import 'package:flutter/material.dart';
import 'package:mylinksfc/Screens/tela_de_links/listadelinks.dart';
import '../../constantes.dart';
import '../componentes/Fundo.dart';
import '../componentes/avatarcirculo.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Corpo extends StatelessWidget {
  Corpo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double fatorDeMultiplicacaoHorizontal = .90;
    if (kIsWeb) fatorDeMultiplicacaoHorizontal = .30;
    return Fundo(
      child: Center(
        heightFactor: 1.15,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * .10),
              child: Column(
                children: [
                  AvatarCirculo(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'MY LINKS',
                    style: TextStyle(
                      color: kCorPrimaria,
                      fontSize: 50,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .40),
              width: size.width * fatorDeMultiplicacaoHorizontal,
              child: Column(
                children: [
                  ListaDeLinks(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
