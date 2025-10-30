import 'package:floor/floor.dart';

@entity
class HeroDatabaseEntity {
  @primaryKey
  final int id;

  final String name;
  final String slug;
  final int intelligence;
  final int strength;
  final int speed;
  final int durability;
  final int power;
  final int combat;

  final String imageXs;
  final String imageSm;
  final String imageMd;
  final String imageLg;

  HeroDatabaseEntity({
    required this.id,
    required this.name,
    required this.slug,
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
    required this.imageXs,
    required this.imageSm,
    required this.imageMd,
    required this.imageLg,
  });
}
