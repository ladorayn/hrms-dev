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
    T Function(Object? json) fromJsonT, {
    required List<T> Function() emptyT,
  }) {
    final links = json['links'] == null
        ? null
        : LinksModel.fromJson(json['links'] as Map<String, dynamic>);

    final meta = json['meta'] == null
        ? null
        : MetaModel.fromJson(json['meta'] as Map<String, dynamic>);

    if (json['data'] == null) {
      return _BasePaginatedResponse<T>(
        message: json['message'] as String,
        code: json['code'] as int,
        data: emptyT(),
        links: links,
        meta: meta,
      );
    }

    final dataList = json['data'] as List;
    final parsedData = dataList.map((item) => fromJsonT(item)).toList();

    return _BasePaginatedResponse<T>(
      code: json['code'] as int,
      message: json['message'] as String,
      data: parsedData,
      links: links,
      meta: meta,
    );
  }
}
