import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorite_pet.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_list_view.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class FavoritesViewMobile extends StatelessWidget {
  const FavoritesViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
      ),
      body: const FavoritesListView(),
    );
  }
}
