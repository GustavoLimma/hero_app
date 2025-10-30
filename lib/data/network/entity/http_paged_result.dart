import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_hero_app/domain/hero.dart';

part 'http_paged_result.freezed.dart';
part 'http_paged_result.g.dart';

@freezed
class HttpPagedResult with _$HttpPagedResult {
  const factory HttpPagedResult({
    required int first,
    required dynamic prev,
    required int next,
    required int last,
    required int pages,
    required int items,
    required List<HeroEntity> data,
  }) = _HttpPagedResult;

  factory HttpPagedResult.fromJson(Map<String, dynamic> json) =>
      _$HttpPagedResultFromJson(json);
}
