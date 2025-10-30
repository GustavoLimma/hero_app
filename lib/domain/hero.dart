import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';
part 'hero.g.dart';

//Modelo de domínio do herói, usada pra representar ele 
@freezed
class HeroEntity with _$HeroEntity {
  const factory HeroEntity({
    required int id,
    required String name,
    required String slug,
    required Powerstats powerstats,
    required Images images,
  }) = _HeroEntity;

  factory HeroEntity.fromJson(Map<String, dynamic> json) =>
      _$HeroEntityFromJson(json);
}

@freezed
class Powerstats with _$Powerstats {
  const factory Powerstats({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _Powerstats;

  factory Powerstats.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) =>
      _$ImagesFromJson(json);
}
