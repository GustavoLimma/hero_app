// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeroEntity _$HeroEntityFromJson(Map<String, dynamic> json) {
  return _HeroEntity.fromJson(json);
}

/// @nodoc
mixin _$HeroEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  Powerstats get powerstats => throw _privateConstructorUsedError;
  Images get images => throw _privateConstructorUsedError;

  /// Serializes this HeroEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroEntityCopyWith<HeroEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroEntityCopyWith<$Res> {
  factory $HeroEntityCopyWith(
          HeroEntity value, $Res Function(HeroEntity) then) =
      _$HeroEntityCopyWithImpl<$Res, HeroEntity>;
  @useResult
  $Res call(
      {int id, String name, String slug, Powerstats powerstats, Images images});

  $PowerstatsCopyWith<$Res> get powerstats;
  $ImagesCopyWith<$Res> get images;
}

/// @nodoc
class _$HeroEntityCopyWithImpl<$Res, $Val extends HeroEntity>
    implements $HeroEntityCopyWith<$Res> {
  _$HeroEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? powerstats = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      powerstats: null == powerstats
          ? _value.powerstats
          : powerstats // ignore: cast_nullable_to_non_nullable
              as Powerstats,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
    ) as $Val);
  }

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PowerstatsCopyWith<$Res> get powerstats {
    return $PowerstatsCopyWith<$Res>(_value.powerstats, (value) {
      return _then(_value.copyWith(powerstats: value) as $Val);
    });
  }

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImagesCopyWith<$Res> get images {
    return $ImagesCopyWith<$Res>(_value.images, (value) {
      return _then(_value.copyWith(images: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeroEntityImplCopyWith<$Res>
    implements $HeroEntityCopyWith<$Res> {
  factory _$$HeroEntityImplCopyWith(
          _$HeroEntityImpl value, $Res Function(_$HeroEntityImpl) then) =
      __$$HeroEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String slug, Powerstats powerstats, Images images});

  @override
  $PowerstatsCopyWith<$Res> get powerstats;
  @override
  $ImagesCopyWith<$Res> get images;
}

/// @nodoc
class __$$HeroEntityImplCopyWithImpl<$Res>
    extends _$HeroEntityCopyWithImpl<$Res, _$HeroEntityImpl>
    implements _$$HeroEntityImplCopyWith<$Res> {
  __$$HeroEntityImplCopyWithImpl(
      _$HeroEntityImpl _value, $Res Function(_$HeroEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? powerstats = null,
    Object? images = null,
  }) {
    return _then(_$HeroEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      powerstats: null == powerstats
          ? _value.powerstats
          : powerstats // ignore: cast_nullable_to_non_nullable
              as Powerstats,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroEntityImpl implements _HeroEntity {
  const _$HeroEntityImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.powerstats,
      required this.images});

  factory _$HeroEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final Powerstats powerstats;
  @override
  final Images images;

  @override
  String toString() {
    return 'HeroEntity(id: $id, name: $name, slug: $slug, powerstats: $powerstats, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.powerstats, powerstats) ||
                other.powerstats == powerstats) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, powerstats, images);

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroEntityImplCopyWith<_$HeroEntityImpl> get copyWith =>
      __$$HeroEntityImplCopyWithImpl<_$HeroEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroEntityImplToJson(
      this,
    );
  }
}

abstract class _HeroEntity implements HeroEntity {
  const factory _HeroEntity(
      {required final int id,
      required final String name,
      required final String slug,
      required final Powerstats powerstats,
      required final Images images}) = _$HeroEntityImpl;

  factory _HeroEntity.fromJson(Map<String, dynamic> json) =
      _$HeroEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  Powerstats get powerstats;
  @override
  Images get images;

  /// Create a copy of HeroEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroEntityImplCopyWith<_$HeroEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Powerstats _$PowerstatsFromJson(Map<String, dynamic> json) {
  return _Powerstats.fromJson(json);
}

/// @nodoc
mixin _$Powerstats {
  int get intelligence => throw _privateConstructorUsedError;
  int get strength => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError;
  int get durability => throw _privateConstructorUsedError;
  int get power => throw _privateConstructorUsedError;
  int get combat => throw _privateConstructorUsedError;

  /// Serializes this Powerstats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Powerstats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PowerstatsCopyWith<Powerstats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerstatsCopyWith<$Res> {
  factory $PowerstatsCopyWith(
          Powerstats value, $Res Function(Powerstats) then) =
      _$PowerstatsCopyWithImpl<$Res, Powerstats>;
  @useResult
  $Res call(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat});
}

/// @nodoc
class _$PowerstatsCopyWithImpl<$Res, $Val extends Powerstats>
    implements $PowerstatsCopyWith<$Res> {
  _$PowerstatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Powerstats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelligence = null,
    Object? strength = null,
    Object? speed = null,
    Object? durability = null,
    Object? power = null,
    Object? combat = null,
  }) {
    return _then(_value.copyWith(
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as int,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      combat: null == combat
          ? _value.combat
          : combat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PowerstatsImplCopyWith<$Res>
    implements $PowerstatsCopyWith<$Res> {
  factory _$$PowerstatsImplCopyWith(
          _$PowerstatsImpl value, $Res Function(_$PowerstatsImpl) then) =
      __$$PowerstatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int intelligence,
      int strength,
      int speed,
      int durability,
      int power,
      int combat});
}

/// @nodoc
class __$$PowerstatsImplCopyWithImpl<$Res>
    extends _$PowerstatsCopyWithImpl<$Res, _$PowerstatsImpl>
    implements _$$PowerstatsImplCopyWith<$Res> {
  __$$PowerstatsImplCopyWithImpl(
      _$PowerstatsImpl _value, $Res Function(_$PowerstatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Powerstats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelligence = null,
    Object? strength = null,
    Object? speed = null,
    Object? durability = null,
    Object? power = null,
    Object? combat = null,
  }) {
    return _then(_$PowerstatsImpl(
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as int,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      combat: null == combat
          ? _value.combat
          : combat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PowerstatsImpl implements _Powerstats {
  const _$PowerstatsImpl(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  factory _$PowerstatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PowerstatsImplFromJson(json);

  @override
  final int intelligence;
  @override
  final int strength;
  @override
  final int speed;
  @override
  final int durability;
  @override
  final int power;
  @override
  final int combat;

  @override
  String toString() {
    return 'Powerstats(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowerstatsImpl &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.durability, durability) ||
                other.durability == durability) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.combat, combat) || other.combat == combat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, intelligence, strength, speed, durability, power, combat);

  /// Create a copy of Powerstats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PowerstatsImplCopyWith<_$PowerstatsImpl> get copyWith =>
      __$$PowerstatsImplCopyWithImpl<_$PowerstatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PowerstatsImplToJson(
      this,
    );
  }
}

abstract class _Powerstats implements Powerstats {
  const factory _Powerstats(
      {required final int intelligence,
      required final int strength,
      required final int speed,
      required final int durability,
      required final int power,
      required final int combat}) = _$PowerstatsImpl;

  factory _Powerstats.fromJson(Map<String, dynamic> json) =
      _$PowerstatsImpl.fromJson;

  @override
  int get intelligence;
  @override
  int get strength;
  @override
  int get speed;
  @override
  int get durability;
  @override
  int get power;
  @override
  int get combat;

  /// Create a copy of Powerstats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PowerstatsImplCopyWith<_$PowerstatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  String get xs => throw _privateConstructorUsedError;
  String get sm => throw _privateConstructorUsedError;
  String get md => throw _privateConstructorUsedError;
  String get lg => throw _privateConstructorUsedError;

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({String xs, String sm, String md, String lg});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xs = null,
    Object? sm = null,
    Object? md = null,
    Object? lg = null,
  }) {
    return _then(_value.copyWith(
      xs: null == xs
          ? _value.xs
          : xs // ignore: cast_nullable_to_non_nullable
              as String,
      sm: null == sm
          ? _value.sm
          : sm // ignore: cast_nullable_to_non_nullable
              as String,
      md: null == md
          ? _value.md
          : md // ignore: cast_nullable_to_non_nullable
              as String,
      lg: null == lg
          ? _value.lg
          : lg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String xs, String sm, String md, String lg});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xs = null,
    Object? sm = null,
    Object? md = null,
    Object? lg = null,
  }) {
    return _then(_$ImagesImpl(
      xs: null == xs
          ? _value.xs
          : xs // ignore: cast_nullable_to_non_nullable
              as String,
      sm: null == sm
          ? _value.sm
          : sm // ignore: cast_nullable_to_non_nullable
              as String,
      md: null == md
          ? _value.md
          : md // ignore: cast_nullable_to_non_nullable
              as String,
      lg: null == lg
          ? _value.lg
          : lg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(
      {required this.xs, required this.sm, required this.md, required this.lg});

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  final String xs;
  @override
  final String sm;
  @override
  final String md;
  @override
  final String lg;

  @override
  String toString() {
    return 'Images(xs: $xs, sm: $sm, md: $md, lg: $lg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.xs, xs) || other.xs == xs) &&
            (identical(other.sm, sm) || other.sm == sm) &&
            (identical(other.md, md) || other.md == md) &&
            (identical(other.lg, lg) || other.lg == lg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xs, sm, md, lg);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      {required final String xs,
      required final String sm,
      required final String md,
      required final String lg}) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  String get xs;
  @override
  String get sm;
  @override
  String get md;
  @override
  String get lg;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
