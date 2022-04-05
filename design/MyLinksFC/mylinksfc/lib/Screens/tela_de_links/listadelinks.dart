import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mylinksfc/Screens/componentes/botaocombordacircular.dart';
import '../../models/resource.dart';

class ListaDeLinks extends StatefulWidget {
  const ListaDeLinks({Key? key}) : super(key: key);

  _DadosDoEstadoDaAPI createState() => _DadosDoEstadoDaAPI();
}

class _DadosDoEstadoDaAPI extends State<ListaDeLinks> {
  Future ObterListaDeLinks() async {
    List<Resource> lista = [];
    final Map<String, String> mapHeaders = {
      'Access-Control-Allow-Origin': "*",
      'Access-Control-Allow-Headers': "Content-Type",
      'Referrer-Policy': "no-referrer-when-downgrade"
    };
    await Future.delayed(Duration(seconds: 3));
    var resposta = await get(
        Uri.parse('https://codefc-mylinks.azurewebsites.net/resource'),
        headers: mapHeaders);

    if (resposta.statusCode == 200) {
      var jsonData = jsonDecode(resposta.body);
      for (var item in jsonData) {
        lista.add(new Resource(item['id'], item['title'], item['url']));
      }
    }

    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: ObterListaDeLinks(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Image.asset(
                "images/loading.gif",
                height: 300,
                width: 300,
              ),
            );
          } else {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (context, i) {
                return BotaoCircular(
                    text: snapshot.data[i].Title, url: snapshot.data[i].Url);
              },
            );
          }
        },
      ),
    );
  }
}
