import 'package:flutter/material.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_list_mobile.dart';
import 'package:pets_app/presentation/views/pets/widgets/pet_list_web.dart';

import 'package:pets_app/presentation/views/pets/widgets/search_action_button.dart';
import 'package:pets_app/widgets/adaptive_widget.dart';

class PetsView extends StatelessWidget {
  const PetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets'),
        actions: const [SearchActionButton()],
      ),
      body: const AdaptiveLayout(
          mobileWidget: PetListMobile(), webWidget: PetListWeb()),
    );
  }
}
