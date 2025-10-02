// core/data/models/base_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'last_page') required int lastPage,
    required int? from,
    required int? to,
    @JsonKey(name: 'first') required String? first,
    @JsonKey(name: 'last') required String? last,
    @JsonKey(name: 'prev') required String? prev,
    @JsonKey(name: 'next') required String? next,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResponseFromJson(json, fromJsonT);
}
