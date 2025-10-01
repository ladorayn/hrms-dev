import 'package:freezed_annotation/freezed_annotation.dart';

part 'shifts_response_model.freezed.dart';
part 'shifts_response_model.g.dart';

@freezed
class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    required int id,
    @JsonKey(name: 'tenant_id') required int tenantId,
    required String name,
    String? description,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}
