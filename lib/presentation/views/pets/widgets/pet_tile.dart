import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/model/pet.dart';
import 'package:pets_app/presentation/views/profile/profile_view.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class PetTile extends StatefulWidget {
  const PetTile({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  State<PetTile> createState() => _PetTileState();
}

class _PetTileState extends State<PetTile> {
  var isFavorite = false;

  @override
  void initState() {
    final provider = Provider.of<PetProvider>(context, listen: false);
    isFavorite =
        (provider.petList.indexWhere((pet) => pet.name == widget.pet.name) !=
            -1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16,
        left: 16,
        top: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: PetsAppColor.gray2,
        ),
        color: Colors.white,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileView(pet: widget.pet),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: widget.pet.name,
              child: Image.asset(
                'assets/pets/${widget.pet.name.toLowerCase()}.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.pet.name,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: PetsAppColor.purple,
                            ),
                      ),
                      Text('${widget.pet.pedigree}, ${widget.pet.age} years',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  Consumer<PetProvider>(builder: (context, provider, _) {
                    isFavorite = (provider.petList
                            .indexWhere((pet) => pet.name == widget.pet.name) !=
                        -1);
                    log(isFavorite.toString());
                    log(provider.petList.toString());

                    return IconButton(
                      onPressed: () {
                        isFavorite = !isFavorite;

                        if (isFavorite) {
                          provider.addFavorite(widget.pet);
                        } else {
                          provider.removeFavorite(widget.pet);
                        }

                        // setState(() {});
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: PetsAppColor.purple,
                      ),
                    );
                  }),
                ],
              ),
            ),
            Container(height: 5, color: PetsAppColor.green),
          ],
        ),
      ),
    );
  }
}
