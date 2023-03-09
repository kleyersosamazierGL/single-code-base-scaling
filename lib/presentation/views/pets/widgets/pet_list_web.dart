import 'package:flutter/material.dart';
import 'package:pets_app/core/constant/constant.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_list_view.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_tile.dart';
import 'package:pets_app/widgets/responsive_widget.dart';

class PetListWeb extends StatelessWidget {
  const PetListWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        smallWidget: PetListView(),
        mediumWidget: PetListView(),
        largeWidget: PetListWrap(),
        extraLargeWidget: PetListWrap());
  }
}

class PetListWrap extends StatelessWidget {
  const PetListWrap({super.key});

  @override
  Widget build(BuildContext context) {
    // Not very performant when dealing with larger lists, a GridView.builder or other alternative when dealing with large lists
    // is recommended
    return SingleChildScrollView(
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          children: petList.map((e) => PetTile(pet: e)).toList(),
        ),
      ),
    );
  }
}
