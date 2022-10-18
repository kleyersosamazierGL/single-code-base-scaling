import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_tile.dart';

class PetsView extends StatelessWidget {
  const PetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xFF6C21DF),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          PetTile(),
          PetTile(),
          PetTile(),
          PetTile(),
        ],
      ),
    );
  }
}
