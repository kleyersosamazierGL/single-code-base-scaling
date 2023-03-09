import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorite_pet.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class FavoritesListView extends StatelessWidget {
  const FavoritesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PetProvider>(
      builder: (context, provider, child) {
        return ListView.builder(
          itemCount: provider.petList.length,
          itemBuilder: (context, index) =>
              FavoritePet(pet: provider.petList.elementAt(index)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        );
      },
    );
  }
}
