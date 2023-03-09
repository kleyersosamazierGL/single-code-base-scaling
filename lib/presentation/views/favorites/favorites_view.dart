import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorite_pet.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_view_mobile.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_web_view.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:pets_app/widgets/adaptive_layout_widget.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdaptiveLayoutWidget(
      mobileWidget: FavoritesViewMobile(),
      webWidget: FavoritesWebView(),
    );
  }
}
