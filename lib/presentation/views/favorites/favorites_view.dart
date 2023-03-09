import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_mobile_view.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_web_view.dart';
import 'package:pets_app/widgets/adaptive_layout_widget.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
      ),
      body: const AdaptiveLayoutWidget(
        mobileWidget: FavoritesMobileView(),
        webWidget: FavoritesWebView(),
      ),
    );
  }
}
