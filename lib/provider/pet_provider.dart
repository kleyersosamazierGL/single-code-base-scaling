import 'package:flutter/material.dart';
import 'package:pets_app/model/pet.dart';

class PetProvider extends ChangeNotifier {
  final petList = <Pet>[];

  void addFavorite(Pet pet) {
    petList.add(pet);
    notifyListeners();
  }

  void removeFavorite(Pet pet) {
    petList.remove(pet);
    notifyListeners();
  }
}
