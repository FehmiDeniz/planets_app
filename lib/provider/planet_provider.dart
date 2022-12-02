import 'package:flutter/cupertino.dart';
import 'package:planets_app/model/planet_model.dart';
import 'package:planets_app/service/planet_service.dart';

class PlanetProvider with ChangeNotifier {
  List<PlanetModel>? response;
  bool isDataIsLoading = false;

  getPlanetData(String planetName) async {
    response = (await getPlanetService(planetName));
    isDataIsLoading = true;

    notifyListeners();
  }
}
