import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorite_pet.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
      ),
      body: SingleChildScrollView(
        child: Consumer<PetProvider>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children:
                    provider.petList.map((p) => FavoritePet(pet: p)).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
