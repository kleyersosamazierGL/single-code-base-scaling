import 'package:flutter/material.dart';
import 'package:pets_app/model/pet.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_mobile_view.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_web_view.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:pets_app/widgets/adaptive_layout_widget.dart';
import 'package:provider/provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Favorites'),
        ),
        body: Selector<PetProvider, List<Pet>>(
          selector: (context, petProvider) => petProvider.petList,
          builder: (context, value, child) => value.isNotEmpty
              ? const AdaptiveLayoutWidget(
                  mobileWidget: FavoritesMobileView(),
                  webWidget: FavoritesWebView(),
                )
              : const Center(
                  child: Text('No favorites'),
                ),
          shouldRebuild: (previous, next) => true,
        ));
  }
}
