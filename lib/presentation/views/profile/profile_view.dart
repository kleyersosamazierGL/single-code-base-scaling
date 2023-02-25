import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/model/pet.dart';
import 'package:pets_app/presentation/views/profile/widgets/info_container.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 230,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 190,
                      child: Hero(
                        tag: widget.pet.name,
                        child: Image.asset(
                          'assets/pets/${widget.pet.name.toLowerCase()}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    margin: const EdgeInsets.only(right: 16),
                    padding: const EdgeInsets.all(8),
                    child: Consumer<PetProvider>(
                      builder: (context, provider, _) {
                        return IconButton(
                          onPressed: () {
                            isFavorite = !isFavorite;

                            if (isFavorite) {
                              provider.addFavorite(widget.pet);
                            } else {
                              provider.removeFavorite(widget.pet);
                            }

                            setState(() {});
                          },
                          icon: Icon(
                            isFavorite &&
                                    provider.petList.indexWhere((pet) =>
                                            pet.name == widget.pet.name) !=
                                        -1
                                ? Icons.favorite
                                : Icons.favorite_border,
                            size: 35,
                            color: PetsAppColor.purple,
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pet.pedigree.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: PetsAppColor.gray1),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.pet.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.black),
                ),
                InfoContainer(
                  pet: widget.pet,
                ),
                Text(
                  'Color',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'White with brown and black spots',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: PetsAppColor.gray1,
                      ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "She's a very friendly dog, well-socialized to other dogs and humans by her breeder, and she would drag us to greet every human and dog she met.",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: PetsAppColor.gray1,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
