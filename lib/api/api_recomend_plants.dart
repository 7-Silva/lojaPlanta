import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:plantas/models/planta.dart';
Future<List<dynamic>> parseJsonFromAssets(String assetsPath) async {
  return rootBundle
      .loadString(assetsPath)
      .then((jsonStr) => jsonDecode(jsonStr));
}

Future<dynamic> getAllRecomend () async{
  
  var response = await Dio().get('http://192.168.0.14:8000/plantas_recomendadas');
  
  List<Planta> lista_de_plantas_recomendadas= [];
  response.data.forEach((k){
    lista_de_plantas_recomendadas.add(Planta.fromJson(k));

  });
 return lista_de_plantas_recomendadas;
  
}