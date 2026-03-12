import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrms_mobile/core/data/models/paginated_response.dart';

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
    String? status,
    int? code,
    String? message,
    required List<T> data,
    Pagination? pagination,
    LinksModel? links,
    MetaModel? meta,
  }) = _BasePaginatedResponse<T>;

  factory BasePaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT, {
    List<T> Function()? emptyT,
  }) {
    return BasePaginatedResponse<T>(
      status: json['status'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List?)?.map((item) => fromJsonT(item)).toList() ??
          emptyT?.call() ??
          [],
      links: json['links'] != null
          ? LinksModel.fromJson(json['links'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? MetaModel.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      pagination: json['pagination'] != null
          ? Pagination.fromJson(json['pagination'] as Map<String, dynamic>)
          : null,
    );
  }
}
