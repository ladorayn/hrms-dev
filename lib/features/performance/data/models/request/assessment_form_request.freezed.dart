// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_form_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssessmentFormRequest _$AssessmentFormRequestFromJson(
    Map<String, dynamic> json) {
  return _AssessmentFormRequest.fromJson(json);
}

/// @nodoc
mixin _$AssessmentFormRequest {
  int get status => throw _privateConstructorUsedError;
  List<SubmissionForm> get submissions => throw _privateConstructorUsedError;

  /// Serializes this AssessmentFormRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentFormRequestCopyWith<AssessmentFormRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentFormRequestCopyWith<$Res> {
  factory $AssessmentFormRequestCopyWith(AssessmentFormRequest value,
          $Res Function(AssessmentFormRequest) then) =
      _$AssessmentFormRequestCopyWithImpl<$Res, AssessmentFormRequest>;
  @useResult
  $Res call({int status, List<SubmissionForm> submissions});
}

/// @nodoc
class _$AssessmentFormRequestCopyWithImpl<$Res,
        $Val extends AssessmentFormRequest>
    implements $AssessmentFormRequestCopyWith<$Res> {
  _$AssessmentFormRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? submissions = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<SubmissionForm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentFormRequestImplCopyWith<$Res>
    implements $AssessmentFormRequestCopyWith<$Res> {
  factory _$$AssessmentFormRequestImplCopyWith(
          _$AssessmentFormRequestImpl value,
          $Res Function(_$AssessmentFormRequestImpl) then) =
      __$$AssessmentFormRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, List<SubmissionForm> submissions});
}

/// @nodoc
class __$$AssessmentFormRequestImplCopyWithImpl<$Res>
    extends _$AssessmentFormRequestCopyWithImpl<$Res,
        _$AssessmentFormRequestImpl>
    implements _$$AssessmentFormRequestImplCopyWith<$Res> {
  __$$AssessmentFormRequestImplCopyWithImpl(_$AssessmentFormRequestImpl _value,
      $Res Function(_$AssessmentFormRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? submissions = null,
  }) {
    return _then(_$AssessmentFormRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<SubmissionForm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentFormRequestImpl implements _AssessmentFormRequest {
  const _$AssessmentFormRequestImpl(
      {required this.status, required final List<SubmissionForm> submissions})
      : _submissions = submissions;

  factory _$AssessmentFormRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentFormRequestImplFromJson(json);

  @override
  final int status;
  final List<SubmissionForm> _submissions;
  @override
  List<SubmissionForm> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'AssessmentFormRequest(status: $status, submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentFormRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of AssessmentFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentFormRequestImplCopyWith<_$AssessmentFormRequestImpl>
      get copyWith => __$$AssessmentFormRequestImplCopyWithImpl<
          _$AssessmentFormRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentFormRequestImplToJson(
      this,
    );
  }
}

abstract class _AssessmentFormRequest implements AssessmentFormRequest {
  const factory _AssessmentFormRequest(
          {required final int status,
          required final List<SubmissionForm> submissions}) =
      _$AssessmentFormRequestImpl;

  factory _AssessmentFormRequest.fromJson(Map<String, dynamic> json) =
      _$AssessmentFormRequestImpl.fromJson;

  @override
  int get status;
  @override
  List<SubmissionForm> get submissions;

  /// Create a copy of AssessmentFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentFormRequestImplCopyWith<_$AssessmentFormRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AssessmentFormValidateRequest _$AssessmentFormValidateRequestFromJson(
    Map<String, dynamic> json) {
  return _AssessmentFormValidateRequest.fromJson(json);
}

/// @nodoc
mixin _$AssessmentFormValidateRequest {
  List<SubmissionForm> get submissions => throw _privateConstructorUsedError;

  /// Serializes this AssessmentFormValidateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentFormValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentFormValidateRequestCopyWith<AssessmentFormValidateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentFormValidateRequestCopyWith<$Res> {
  factory $AssessmentFormValidateRequestCopyWith(
          AssessmentFormValidateRequest value,
          $Res Function(AssessmentFormValidateRequest) then) =
      _$AssessmentFormValidateRequestCopyWithImpl<$Res,
          AssessmentFormValidateRequest>;
  @useResult
  $Res call({List<SubmissionForm> submissions});
}

/// @nodoc
class _$AssessmentFormValidateRequestCopyWithImpl<$Res,
        $Val extends AssessmentFormValidateRequest>
    implements $AssessmentFormValidateRequestCopyWith<$Res> {
  _$AssessmentFormValidateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentFormValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissions = null,
  }) {
    return _then(_value.copyWith(
      submissions: null == submissions
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<SubmissionForm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentFormValidateRequestImplCopyWith<$Res>
    implements $AssessmentFormValidateRequestCopyWith<$Res> {
  factory _$$AssessmentFormValidateRequestImplCopyWith(
          _$AssessmentFormValidateRequestImpl value,
          $Res Function(_$AssessmentFormValidateRequestImpl) then) =
      __$$AssessmentFormValidateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubmissionForm> submissions});
}

/// @nodoc
class __$$AssessmentFormValidateRequestImplCopyWithImpl<$Res>
    extends _$AssessmentFormValidateRequestCopyWithImpl<$Res,
        _$AssessmentFormValidateRequestImpl>
    implements _$$AssessmentFormValidateRequestImplCopyWith<$Res> {
  __$$AssessmentFormValidateRequestImplCopyWithImpl(
      _$AssessmentFormValidateRequestImpl _value,
      $Res Function(_$AssessmentFormValidateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentFormValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissions = null,
  }) {
    return _then(_$AssessmentFormValidateRequestImpl(
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<SubmissionForm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentFormValidateRequestImpl
    implements _AssessmentFormValidateRequest {
  const _$AssessmentFormValidateRequestImpl(
      {required final List<SubmissionForm> submissions})
      : _submissions = submissions;

  factory _$AssessmentFormValidateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AssessmentFormValidateRequestImplFromJson(json);

  final List<SubmissionForm> _submissions;
  @override
  List<SubmissionForm> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'AssessmentFormValidateRequest(submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentFormValidateRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of AssessmentFormValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentFormValidateRequestImplCopyWith<
          _$AssessmentFormValidateRequestImpl>
      get copyWith => __$$AssessmentFormValidateRequestImplCopyWithImpl<
          _$AssessmentFormValidateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentFormValidateRequestImplToJson(
      this,
    );
  }
}

abstract class _AssessmentFormValidateRequest
    implements AssessmentFormValidateRequest {
  const factory _AssessmentFormValidateRequest(
          {required final List<SubmissionForm> submissions}) =
      _$AssessmentFormValidateRequestImpl;

  factory _AssessmentFormValidateRequest.fromJson(Map<String, dynamic> json) =
      _$AssessmentFormValidateRequestImpl.fromJson;

  @override
  List<SubmissionForm> get submissions;

  /// Create a copy of AssessmentFormValidateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentFormValidateRequestImplCopyWith<
          _$AssessmentFormValidateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubmissionForm _$SubmissionFormFromJson(Map<String, dynamic> json) {
  return _SubmissionForm.fromJson(json);
}

/// @nodoc
mixin _$SubmissionForm {
  @JsonKey(name: 'field_id')
  int get fieldId => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_data')
  dynamic get additionalData => throw _privateConstructorUsedError;

  /// Serializes this SubmissionForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmissionForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmissionFormCopyWith<SubmissionForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionFormCopyWith<$Res> {
  factory $SubmissionFormCopyWith(
          SubmissionForm value, $Res Function(SubmissionForm) then) =
      _$SubmissionFormCopyWithImpl<$Res, SubmissionForm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'field_id') int fieldId,
      dynamic value,
      @JsonKey(name: 'additional_data') dynamic additionalData});
}

/// @nodoc
class _$SubmissionFormCopyWithImpl<$Res, $Val extends SubmissionForm>
    implements $SubmissionFormCopyWith<$Res> {
  _$SubmissionFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmissionForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
    Object? value = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmissionFormImplCopyWith<$Res>
    implements $SubmissionFormCopyWith<$Res> {
  factory _$$SubmissionFormImplCopyWith(_$SubmissionFormImpl value,
          $Res Function(_$SubmissionFormImpl) then) =
      __$$SubmissionFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'field_id') int fieldId,
      dynamic value,
      @JsonKey(name: 'additional_data') dynamic additionalData});
}

/// @nodoc
class __$$SubmissionFormImplCopyWithImpl<$Res>
    extends _$SubmissionFormCopyWithImpl<$Res, _$SubmissionFormImpl>
    implements _$$SubmissionFormImplCopyWith<$Res> {
  __$$SubmissionFormImplCopyWithImpl(
      _$SubmissionFormImpl _value, $Res Function(_$SubmissionFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmissionForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldId = null,
    Object? value = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$SubmissionFormImpl(
      fieldId: null == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmissionFormImpl implements _SubmissionForm {
  const _$SubmissionFormImpl(
      {@JsonKey(name: 'field_id') required this.fieldId,
      required this.value,
      @JsonKey(name: 'additional_data') this.additionalData});

  factory _$SubmissionFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmissionFormImplFromJson(json);

  @override
  @JsonKey(name: 'field_id')
  final int fieldId;
  @override
  final dynamic value;
  @override
  @JsonKey(name: 'additional_data')
  final dynamic additionalData;

  @override
  String toString() {
    return 'SubmissionForm(fieldId: $fieldId, value: $value, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmissionFormImpl &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.additionalData, additionalData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fieldId,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(additionalData));

  /// Create a copy of SubmissionForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmissionFormImplCopyWith<_$SubmissionFormImpl> get copyWith =>
      __$$SubmissionFormImplCopyWithImpl<_$SubmissionFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmissionFormImplToJson(
      this,
    );
  }
}

abstract class _SubmissionForm implements SubmissionForm {
  const factory _SubmissionForm(
          {@JsonKey(name: 'field_id') required final int fieldId,
          required final dynamic value,
          @JsonKey(name: 'additional_data') final dynamic additionalData}) =
      _$SubmissionFormImpl;

  factory _SubmissionForm.fromJson(Map<String, dynamic> json) =
      _$SubmissionFormImpl.fromJson;

  @override
  @JsonKey(name: 'field_id')
  int get fieldId;
  @override
  dynamic get value;
  @override
  @JsonKey(name: 'additional_data')
  dynamic get additionalData;

  /// Create a copy of SubmissionForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmissionFormImplCopyWith<_$SubmissionFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
