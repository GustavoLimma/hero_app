// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroEntityImpl _$$HeroEntityImplFromJson(Map<String, dynamic> json) =>
    _$HeroEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      powerstats:
          Powerstats.fromJson(json['powerstats'] as Map<String, dynamic>),
      images: Images.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeroEntityImplToJson(_$HeroEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'powerstats': instance.powerstats,
      'images': instance.images,
    };

_$PowerstatsImpl _$$PowerstatsImplFromJson(Map<String, dynamic> json) =>
    _$PowerstatsImpl(
      intelligence: (json['intelligence'] as num).toInt(),
      strength: (json['strength'] as num).toInt(),
      speed: (json['speed'] as num).toInt(),
      durability: (json['durability'] as num).toInt(),
      power: (json['power'] as num).toInt(),
      combat: (json['combat'] as num).toInt(),
    );

Map<String, dynamic> _$$PowerstatsImplToJson(_$PowerstatsImpl instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      xs: json['xs'] as String,
      sm: json['sm'] as String,
      md: json['md'] as String,
      lg: json['lg'] as String,
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'xs': instance.xs,
      'sm': instance.sm,
      'md': instance.md,
      'lg': instance.lg,
    };
