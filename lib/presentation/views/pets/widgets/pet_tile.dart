import 'package:flutter/material.dart';

class PetTile extends StatelessWidget {
  const PetTile({Key? key}) : super(key: key);

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
          color: const Color(0xFFE0E0E0),
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              'assets/pets/pet1.png',
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
                        'Aurora',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: const Color(0xFF6C21DF),
                            ),
                      ),
                      Text('French Bulldog, 7 years',
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFF6C21DF),
                      )),
                ],
              ),
            ),
            Container(height: 5, color: Color(0xFF00DA9F)),
          ],
        ),
      ),
    );
  }
}
