import 'package:flutter/material.dart';
import 'package:pets_app/core/constant/constant.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_tile.dart';

class PetListView extends StatelessWidget {
  const PetListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: petList.length,
      itemBuilder: (context, index) {
        return PetTile(pet: petList.elementAt(index));
      },
    );
  }
}
