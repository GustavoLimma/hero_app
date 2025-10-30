// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_paged_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpPagedResult _$HttpPagedResultFromJson(Map<String, dynamic> json) {
  return _HttpPagedResult.fromJson(json);
}

/// @nodoc
mixin _$HttpPagedResult {
  int get first => throw _privateConstructorUsedError;
  dynamic get prev => throw _privateConstructorUsedError;
  int get next => throw _privateConstructorUsedError;
  int get last => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get items => throw _privateConstructorUsedError;
  List<HeroEntity> get data => throw _privateConstructorUsedError;

  /// Serializes this HttpPagedResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HttpPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpPagedResultCopyWith<HttpPagedResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpPagedResultCopyWith<$Res> {
  factory $HttpPagedResultCopyWith(
          HttpPagedResult value, $Res Function(HttpPagedResult) then) =
      _$HttpPagedResultCopyWithImpl<$Res, HttpPagedResult>;
  @useResult
  $Res call(
      {int first,
      dynamic prev,
      int next,
      int last,
      int pages,
      int items,
      List<HeroEntity> data});
}

/// @nodoc
class _$HttpPagedResultCopyWithImpl<$Res, $Val extends HttpPagedResult>
    implements $HttpPagedResultCopyWith<$Res> {
  _$HttpPagedResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? prev = freezed,
    Object? next = null,
    Object? last = null,
    Object? pages = null,
    Object? items = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HeroEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpPagedResultImplCopyWith<$Res>
    implements $HttpPagedResultCopyWith<$Res> {
  factory _$$HttpPagedResultImplCopyWith(_$HttpPagedResultImpl value,
          $Res Function(_$HttpPagedResultImpl) then) =
      __$$HttpPagedResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int first,
      dynamic prev,
      int next,
      int last,
      int pages,
      int items,
      List<HeroEntity> data});
}

/// @nodoc
class __$$HttpPagedResultImplCopyWithImpl<$Res>
    extends _$HttpPagedResultCopyWithImpl<$Res, _$HttpPagedResultImpl>
    implements _$$HttpPagedResultImplCopyWith<$Res> {
  __$$HttpPagedResultImplCopyWithImpl(
      _$HttpPagedResultImpl _value, $Res Function(_$HttpPagedResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? prev = freezed,
    Object? next = null,
    Object? last = null,
    Object? pages = null,
    Object? items = null,
    Object? data = null,
  }) {
    return _then(_$HttpPagedResultImpl(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HeroEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpPagedResultImpl implements _HttpPagedResult {
  const _$HttpPagedResultImpl(
      {required this.first,
      required this.prev,
      required this.next,
      required this.last,
      required this.pages,
      required this.items,
      required final List<HeroEntity> data})
      : _data = data;

  factory _$HttpPagedResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpPagedResultImplFromJson(json);

  @override
  final int first;
  @override
  final dynamic prev;
  @override
  final int next;
  @override
  final int last;
  @override
  final int pages;
  @override
  final int items;
  final List<HeroEntity> _data;
  @override
  List<HeroEntity> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HttpPagedResult(first: $first, prev: $prev, next: $next, last: $last, pages: $pages, items: $items, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpPagedResultImpl &&
            (identical(other.first, first) || other.first == first) &&
            const DeepCollectionEquality().equals(other.prev, prev) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.items, items) || other.items == items) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      first,
      const DeepCollectionEquality().hash(prev),
      next,
      last,
      pages,
      items,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of HttpPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpPagedResultImplCopyWith<_$HttpPagedResultImpl> get copyWith =>
      __$$HttpPagedResultImplCopyWithImpl<_$HttpPagedResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpPagedResultImplToJson(
      this,
    );
  }
}

abstract class _HttpPagedResult implements HttpPagedResult {
  const factory _HttpPagedResult(
      {required final int first,
      required final dynamic prev,
      required final int next,
      required final int last,
      required final int pages,
      required final int items,
      required final List<HeroEntity> data}) = _$HttpPagedResultImpl;

  factory _HttpPagedResult.fromJson(Map<String, dynamic> json) =
      _$HttpPagedResultImpl.fromJson;

  @override
  int get first;
  @override
  dynamic get prev;
  @override
  int get next;
  @override
  int get last;
  @override
  int get pages;
  @override
  int get items;
  @override
  List<HeroEntity> get data;

  /// Create a copy of HttpPagedResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HttpPagedResultImplCopyWith<_$HttpPagedResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
