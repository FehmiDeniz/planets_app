import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:planets_app/model/planet_model.dart';
import 'package:planets_app/service/logging.dart';

final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://api.api-ninjas.com/v1/planets?name=",
    connectTimeout: 5000,
    receiveTimeout: 3000))
  ..interceptors.add(Logging());

@override
Future<List<PlanetModel>> getPlanetService(String planetName) async {
  List<PlanetModel> planetModel;

  final response =
      await _dio.get("https://api.api-ninjas.com/v1/planets?name=$planetName",
          options: Options(
            headers: {'X-Api-Key': 'S8t6adip1cpTDNX1mOZMQA==H2u28qmXPqW40bMY'},
          ));

  var a = response.data as List;
  planetModel = a.map((value) => PlanetModel.fromJson(value)).toList();

  print(response.data);
  return planetModel;
}
