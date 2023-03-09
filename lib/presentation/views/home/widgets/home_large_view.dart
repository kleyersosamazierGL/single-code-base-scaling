import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/presentation/views/favorites/favorites_view.dart';
import 'package:pets_app/presentation/views/pets/pets_view.dart';

class HomeLargeView extends StatefulWidget {
  const HomeLargeView({super.key});

  @override
  State<HomeLargeView> createState() => _HomeLargeViewState();
}

class _HomeLargeViewState extends State<HomeLargeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (value) => setState(() {
            _selectedIndex = value;
          }),
          backgroundColor: PetsAppColor.purple,
          labelType: NavigationRailLabelType.none,
          destinations: const [
            NavigationRailDestination(
                icon: Icon(
                  Icons.pets,
                  color: Colors.white70,
                ),
                selectedIcon: Icon(
                  Icons.pets,
                  color: Colors.brown,
                ),
                label: Text('Pets')),
            NavigationRailDestination(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white70,
                ),
                selectedIcon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                label: Text('Favorites')),
          ],
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: PageView.builder(
            
            scrollDirection: Axis.vertical,
            onPageChanged: (value) => setState(() {
              _selectedIndex = value;
            }),
            itemCount: 2,
            itemBuilder: (context, index) =>
                const [PetsView(), FavoritesView()].elementAt(index),
          ),
        )
      ],
    ));
  }
}
