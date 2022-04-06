import 'package:flutter/material.dart';
import 'package:mylinksfc/constantes.dart';

class AvatarCirculo extends StatelessWidget {
  const AvatarCirculo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return CircleAvatar(
    //   backgroundColor: kCorPrimaria,
    //   radius: 85.0,
    //   child: Image(
    //     image: AssetImage('assets/images/logo.png'),
    //   ),
    // );

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      child: Container(
        height: size.height * 0.20,
        color: kCorPrimaria,
        child: Image(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
