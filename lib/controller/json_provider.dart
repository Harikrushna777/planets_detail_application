import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planets_detail_application/modal/planets_modals.dart';

class JsonProvider extends ChangeNotifier {
  List<PlanetModal> allPlanets = [];

  JsonProvider() {
    loadJson();
  }

  loadJson() async {
    String response = await rootBundle.loadString("assets/json/planets.json");
    List allData = jsonDecode(response);
    allPlanets = allData.map((e) => PlanetModal.fromMap(data: e)).toList();
    notifyListeners();
  }
}
