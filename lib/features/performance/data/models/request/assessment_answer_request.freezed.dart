// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssessmentAnswerRequest _$AssessmentAnswerRequestFromJson(
    Map<String, dynamic> json) {
  return _AssessmentAnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$AssessmentAnswerRequest {
  @JsonKey(name: 'employee_self_assessment')
  String? get employeeSelfAssessment => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_id')
  int? get formId => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_by')
  int? get submittedBy => throw _privateConstructorUsedError;

  /// Serializes this AssessmentAnswerRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentAnswerRequestCopyWith<AssessmentAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentAnswerRequestCopyWith<$Res> {
  factory $AssessmentAnswerRequestCopyWith(AssessmentAnswerRequest value,
          $Res Function(AssessmentAnswerRequest) then) =
      _$AssessmentAnswerRequestCopyWithImpl<$Res, AssessmentAnswerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_self_assessment')
      String? employeeSelfAssessment,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy});
}

/// @nodoc
class _$AssessmentAnswerRequestCopyWithImpl<$Res,
        $Val extends AssessmentAnswerRequest>
    implements $AssessmentAnswerRequestCopyWith<$Res> {
  _$AssessmentAnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeSelfAssessment = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
  }) {
    return _then(_value.copyWith(
      employeeSelfAssessment: freezed == employeeSelfAssessment
          ? _value.employeeSelfAssessment
          : employeeSelfAssessment // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentAnswerRequestImplCopyWith<$Res>
    implements $AssessmentAnswerRequestCopyWith<$Res> {
  factory _$$AssessmentAnswerRequestImplCopyWith(
          _$AssessmentAnswerRequestImpl value,
          $Res Function(_$AssessmentAnswerRequestImpl) then) =
      __$$AssessmentAnswerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_self_assessment')
      String? employeeSelfAssessment,
      @JsonKey(name: 'form_id') int? formId,
      @JsonKey(name: 'submitted_by') int? submittedBy});
}

/// @nodoc
class __$$AssessmentAnswerRequestImplCopyWithImpl<$Res>
    extends _$AssessmentAnswerRequestCopyWithImpl<$Res,
        _$AssessmentAnswerRequestImpl>
    implements _$$AssessmentAnswerRequestImplCopyWith<$Res> {
  __$$AssessmentAnswerRequestImplCopyWithImpl(
      _$AssessmentAnswerRequestImpl _value,
      $Res Function(_$AssessmentAnswerRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeSelfAssessment = freezed,
    Object? formId = freezed,
    Object? submittedBy = freezed,
  }) {
    return _then(_$AssessmentAnswerRequestImpl(
      employeeSelfAssessment: freezed == employeeSelfAssessment
          ? _value.employeeSelfAssessment
          : employeeSelfAssessment // ignore: cast_nullable_to_non_nullable
              as String?,
      formId: freezed == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as int?,
      submittedBy: freezed == submittedBy
          ? _value.submittedBy
          : submittedBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentAnswerRequestImpl implements _AssessmentAnswerRequest {
  const _$AssessmentAnswerRequestImpl(
      {@JsonKey(name: 'employee_self_assessment') this.employeeSelfAssessment,
      @JsonKey(name: 'form_id') this.formId,
      @JsonKey(name: 'submitted_by') this.submittedBy});

  factory _$AssessmentAnswerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentAnswerRequestImplFromJson(json);

  @override
  @JsonKey(name: 'employee_self_assessment')
  final String? employeeSelfAssessment;
  @override
  @JsonKey(name: 'form_id')
  final int? formId;
  @override
  @JsonKey(name: 'submitted_by')
  final int? submittedBy;

  @override
  String toString() {
    return 'AssessmentAnswerRequest(employeeSelfAssessment: $employeeSelfAssessment, formId: $formId, submittedBy: $submittedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentAnswerRequestImpl &&
            (identical(other.employeeSelfAssessment, employeeSelfAssessment) ||
                other.employeeSelfAssessment == employeeSelfAssessment) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.submittedBy, submittedBy) ||
                other.submittedBy == submittedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, employeeSelfAssessment, formId, submittedBy);

  /// Create a copy of AssessmentAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentAnswerRequestImplCopyWith<_$AssessmentAnswerRequestImpl>
      get copyWith => __$$AssessmentAnswerRequestImplCopyWithImpl<
          _$AssessmentAnswerRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentAnswerRequestImplToJson(
      this,
    );
  }
}

abstract class _AssessmentAnswerRequest implements AssessmentAnswerRequest {
  const factory _AssessmentAnswerRequest(
          {@JsonKey(name: 'employee_self_assessment')
          final String? employeeSelfAssessment,
          @JsonKey(name: 'form_id') final int? formId,
          @JsonKey(name: 'submitted_by') final int? submittedBy}) =
      _$AssessmentAnswerRequestImpl;

  factory _AssessmentAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$AssessmentAnswerRequestImpl.fromJson;

  @override
  @JsonKey(name: 'employee_self_assessment')
  String? get employeeSelfAssessment;
  @override
  @JsonKey(name: 'form_id')
  int? get formId;
  @override
  @JsonKey(name: 'submitted_by')
  int? get submittedBy;

  /// Create a copy of AssessmentAnswerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentAnswerRequestImplCopyWith<_$AssessmentAnswerRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
