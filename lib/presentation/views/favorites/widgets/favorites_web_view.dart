import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_list_view.dart';
import 'package:pets_app/presentation/views/favorites/widgets/favorites_mobile_view.dart';
import 'package:pets_app/widgets/responsive_widget.dart';

class FavoritesWebView extends StatelessWidget {
  const FavoritesWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveWidget(
        smallWidget: const FavoritesMobileView(),
        mediumWidget: const FavoritesMobileView(),
        largeWidget: _FavoritesWebView(width: size.width * 0.7),
        extraLargeWidget: _FavoritesWebView(width: size.width * 0.8));
  }
}

class _FavoritesWebView extends StatelessWidget {
  const _FavoritesWebView({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        child: const FavoritesListView(),
      ),
    );
  }
}
