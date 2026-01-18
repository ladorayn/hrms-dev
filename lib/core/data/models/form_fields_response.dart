import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_fields_response.freezed.dart';

part 'form_fields_response.g.dart';

@freezed
class FormFieldsGroupDetail with _$FormFieldsGroupDetail {
  const factory FormFieldsGroupDetail({
    int? id,
    String? name,
    String? code,
    String? description,
    int? type,
    @JsonKey(name: 'type_label') String? typeLabel,
    required List<FormFieldsGroup> groups,
  }) = _FormFieldsGroupDetail;

  factory FormFieldsGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsGroupDetailFromJson(json);
}

@freezed
class FormFieldsGroup with _$FormFieldsGroup {
  const factory FormFieldsGroup({
    required int id,
    required String name,
    @JsonKey(name: 'form_id') required int formId,
    required int order,
    Map<String, dynamic>? metadata,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<FormFields> fields,
  }) = _FormFieldsGroup;

  factory FormFieldsGroup.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsGroupFromJson(json);
}

@freezed
class FormFields with _$FormFields {
  const factory FormFields({
    required int id,
    @JsonKey(name: 'form_id') int? formId,
    @JsonKey(name: 'field_group_id') int? fieldGroupId,
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
    @JsonKey(name: 'competency_levels')
    List<CompetencyLevels>? competencyLevels,
  }) = _FormFields;

  factory FormFields.fromJson(Map<String, dynamic> json) =>
      _$FormFieldsFromJson(json);
}

@freezed
class CompetencyLevels with _$CompetencyLevels {
  const factory CompetencyLevels({
    int? id,
    String? dimensions,
    String? level,
    String? name,
    String? description,
  }) = _CompetencyLevels;

  factory CompetencyLevels.fromJson(Map<String, dynamic> json) =>
      _$CompetencyLevelsFromJson(json);
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
class FormDetailResponse with _$FormDetailResponse {
  const factory FormDetailResponse({
    required int id,
    required String name,
    required String code,
    String? description,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required int type,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'type_label') String? typeLabel,
    required List<FormFieldsGroup> groups,
  }) = _FormDetailResponse;

  factory FormDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$FormDetailResponseFromJson(json);
}
