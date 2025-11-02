import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_fields_response.freezed.dart';

part 'form_fields_response.g.dart';

@freezed
class FormFields with _$FormFields {
  const factory FormFields({
    required int id,
    @JsonKey(name: 'form_id') int? formId,
    String? label,
    String? type,
    dynamic options,
    @JsonKey(name: 'is_required') required bool isRequired,
    required int order,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    String? description,
    dynamic metadata,
  }) = _FormFields;

  factory FormFields.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsFromJson(json);
}

@freezed
class FieldOptionsRange with _$FieldOptionsRange {
  const factory FieldOptionsRange({
    required int min,
    required int max,
  }) = _FieldOptionsRange;

  factory FieldOptionsRange.fromJson(Map<String, dynamic> json) =>
      _$FieldOptionsRangeFromJson(json);
}

@freezed
class FieldMetadata with _$FieldMetadata {
  const factory FieldMetadata({
    @JsonKey(name: 'is_note') bool? isNote,
  }) = _FieldMetadata;

  factory FieldMetadata.fromJson(Map<String, dynamic> json) =>
      _$FieldMetadataFromJson(json);
}
