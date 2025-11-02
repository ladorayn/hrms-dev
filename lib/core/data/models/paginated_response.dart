import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response.freezed.dart';
part 'paginated_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedResponse<T> with _$PaginatedResponse<T> {
  const factory PaginatedResponse({
    required List<T> data,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'current_page_url') String? currentPageUrl,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
    @JsonKey(name: 'last_page') int? lastPage,
    int? from,
    int? to,
    @JsonKey(name: 'first') String? first,
    @JsonKey(name: 'last') String? last,
    @JsonKey(name: 'prev') String? prev,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
  }) = _PaginatedResponse<T>;

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginatedResponseFromJson(json, fromJsonT);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
