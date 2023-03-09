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
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        NavigationRail(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (value) => setState(() {
            switch (_selectedIndex) {
              case 0:
                _pageController.animateToPage(1,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
                break;
              case 1:
                _pageController.animateToPage(0,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
                break;
              default:
            }
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
            controller: _pageController,
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
