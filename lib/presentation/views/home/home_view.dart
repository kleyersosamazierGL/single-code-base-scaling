import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/presentation/views/favorites/favorites_view.dart';
import 'package:pets_app/presentation/views/pets/pets_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var selectedPage = 0;
  final pages = const [PetsView(), FavoritesView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedPage,
        children: const [PetsView(), FavoritesView()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: PetsAppColor.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: selectedPage,
        onTap: (value) {
          setState(() {
            selectedPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Pets',
            icon: Icon(
              Icons.pets,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(
              Icons.favorite,
            ),
          )
        ],
      ),
    );
  }
}
