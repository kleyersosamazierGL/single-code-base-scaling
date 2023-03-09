import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';

class SearchActionButton extends StatelessWidget {
  const SearchActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.search,
        color: PetsAppColor.purple,
      ),
    );
  }
}
