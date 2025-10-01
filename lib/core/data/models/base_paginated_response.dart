import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_paginated_response.freezed.dart';
part 'base_paginated_response.g.dart';

@freezed
class MetaModel with _$MetaModel {
  const factory MetaModel({
    @JsonKey(name: "current_page") required int currentPage,
    @JsonKey(name: "last_page") required int lastPage,
    @JsonKey(name: "per_page") required int perPage,
    required int total,
    int? from,
    int? to,
    required String path,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

// Model for the "links" object in the pagination
@freezed
class LinksModel with _$LinksModel {
  const factory LinksModel({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _LinksModel;

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
}

@Freezed(genericArgumentFactories: true)
class BasePaginatedResponse<T> with _$BasePaginatedResponse<T> {
  const factory BasePaginatedResponse({
    required int code,
    required String message,
    required List<T> data,
    LinksModel? links,
    MetaModel? meta,
  }) = _BasePaginatedResponse<T>;

  factory BasePaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BasePaginatedResponseFromJson(json, fromJsonT);
}
