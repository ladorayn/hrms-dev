import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_fields_response.freezed.dart';
part 'form_fields_response.g.dart';

// --- NEW TOP-LEVEL RESPONSE MODEL ---
@freezed
class FormFieldsGroupResponse with _$FormFieldsGroupResponse {
  const factory FormFieldsGroupResponse({
    required String status,
    required String message,
    required List<FormFieldsGroup> data,
  }) = _FormFieldsGroupResponse;

  factory FormFieldsGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsGroupResponseFromJson(json);
}

// --- NEW GROUP MODEL (The main object in the 'data' array) ---
@freezed
class FormFieldsGroup with _$FormFieldsGroup {
  const factory FormFieldsGroup({
    required int id,
    required String name,
    @JsonKey(name: 'form_id') required int formId,
    required int order,
    Map<String, dynamic>? metadata, // Stays dynamic
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<FormFields> fields, // List of your existing FormFields
  }) = _FormFieldsGroup;

  factory FormFieldsGroup.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsGroupFromJson(json);
}

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
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'field_group_id') int? fieldGroupId,
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

// --- DEPRECATE/REMOVE FieldMetadata ---
// You no longer need a separate FieldMetadata class if you use Map<String, dynamic>
// for the metadata field in FormFields.
/*
@freezed
class FieldMetadata with _$FieldMetadata {
  const factory FieldMetadata({
    @JsonKey(name: 'is_note') bool? isNote,
  }) = _FieldMetadata;

  factory FieldMetadata.fromJson(Map<String, dynamic> json) =>
      _$FieldMetadataFromJson(json);
}
*/
