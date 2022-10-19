import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/model/pet.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class FavoritePet extends StatefulWidget {
  const FavoritePet({super.key, required this.pet});

  final Pet pet;

  @override
  State<FavoritePet> createState() => _FavoritePetState();
}

class _FavoritePetState extends State<FavoritePet> {
  var isFavorite = true;

  late final PetProvider provider;
  @override
  void initState() {
    provider = Provider.of<PetProvider>(context, listen: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: PetsAppColor.gray2,
        ),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 0, right: 16),
            leading: Container(
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/pets/${widget.pet.name.toLowerCase()}.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                widget.pet.name,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: PetsAppColor.purple,
                    ),
              ),
            ),
            subtitle: Row(
              children: [
                Flexible(
                  child: Text(
                    '${widget.pet.pedigree}, ${widget.pet.age} years',
                    style: Theme.of(context).textTheme.bodyText2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                provider.removeFavorite(widget.pet);
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: PetsAppColor.purple,
              ),
            ),
          ),
          Container(height: 5, color: PetsAppColor.green),
        ],
      ),
    );
  }
}
