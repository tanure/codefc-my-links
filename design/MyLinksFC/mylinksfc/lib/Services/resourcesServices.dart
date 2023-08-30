import 'dart:convert';
import 'package:mylinksfc/constantes.dart';
import 'package:mylinksfc/models/resource.dart';
import 'package:http/http.dart' as http;

class ResourceServices {
  static const headers = {'Contet-Type': 'application/json'};

  Future<APIResponse<List<Resource>>> obterListaDeURLs() async {
    return await http.get(new Uri(path: kUrlBase + '/resource')).then((req) {
      if (req.statusCode == 200) {
        var lista = List<Resource>.from(
            json.decode(req.body)[''].map((data) => Resource.fromJson(data)));
        return APIResponse<List<Resource>>(
            Data: lista, Error: false, ErrorMessage: '');
      } else {
        throw new Error();
      }
    }).catchError((_) => APIResponse<List<Resource>>(
        Data: null,
        Error: true,
        ErrorMessage: 'Algo errado não está certo. Pode isso Arnaldo?'));
  }
}

class APIResponse<T> {
  T? Data;
  bool Error = false;
  String ErrorMessage = "";

  APIResponse({this.Data, required this.Error, required this.ErrorMessage});
}
