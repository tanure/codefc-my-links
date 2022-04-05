import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:mylinksfc/constantes.dart';
import 'package:url_launcher/url_launcher.dart';

class BotaoCircular extends StatelessWidget {
  final String text;
  final String url;
  final Color color, textColor;
  const BotaoCircular(
      {Key? key,
      required this.text,
      required this.url,
      this.color = kCorPrimaria,
      this.textColor = kCorSecudaria})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Esse size nos proporcional o tamanho total da tela

    double fatorDeMultiplicacaoHorizontal = .90;

    if (kIsWeb) fatorDeMultiplicacaoHorizontal = .27;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * fatorDeMultiplicacaoHorizontal,
      height: size.height * .08,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          onPressed: () => {_launchURL(url)},
          style: ElevatedButton.styleFrom(
              primary: color,
              onPrimary: kCorGramado,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto')),
        ),
      ),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
