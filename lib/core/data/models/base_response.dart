// core/data/models/base_response.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';

part 'base_response.freezed.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    required String status,
    required String message,
    required T data,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    if (json['data'] == null) {
      throw DataNotFoundException(
        json['message'] ?? 'Data not found',
      );
    }
    return _BaseResponse<T>(
      status: json['status'] as String,
      message: json['message'] as String,
      data: fromJsonT(json['data']),
    );
  }
}
