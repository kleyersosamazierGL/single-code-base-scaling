import 'package:flutter/material.dart';
import 'package:pets_app/core/color/pets_app_color.dart';
import 'package:pets_app/model/gender.dart';
import 'package:pets_app/model/pet.dart';

class InfoContainer extends StatelessWidget {
  const InfoContainer({
    Key? key,
    required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 24),
      padding: const EdgeInsets.only(top: 11, bottom: 11, right: 56, left: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            PetsAppColor.purple.withOpacity(0),
            PetsAppColor.purple.withOpacity(.16),
          ],
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  'assets/icons/gender.png',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                pet.gender.toShortString().capitalize(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              Text(
                'GENDER',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: PetsAppColor.gray1,
                    ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  'assets/icons/cake.png',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '${pet.age} year(s)',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              Text(
                'AGE',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: PetsAppColor.gray1,
                    ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  'assets/icons/weight.png',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '${pet.weight} lb',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
              Text(
                'WEIGHT',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: PetsAppColor.gray1,
                    ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
