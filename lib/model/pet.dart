import 'package:pets_app/model/gender.dart';

class Pet {
  final String name;
  final String pedigree;
  final String age;
  final Gender gender;
  final String weight;

  Pet(
    this.name,
    this.pedigree,
    this.age,
    this.gender,
    this.weight,
  );

  @override
  String toString() {
    return 'Name: $name';
  }
}
