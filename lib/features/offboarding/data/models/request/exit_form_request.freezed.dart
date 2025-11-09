// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exit_form_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExitFormRequest _$ExitFormRequestFromJson(Map<String, dynamic> json) {
  return _ExitFormRequest.fromJson(json);
}

/// @nodoc
mixin _$ExitFormRequest {
  List<SubmissionForm> get submissions => throw _privateConstructorUsedError;

  /// Serializes this ExitFormRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExitFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExitFormRequestCopyWith<ExitFormRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExitFormRequestCopyWith<$Res> {
  factory $ExitFormRequestCopyWith(
          ExitFormRequest value, $Res Function(ExitFormRequest) then) =
      _$ExitFormRequestCopyWithImpl<$Res, ExitFormRequest>;
  @useResult
  $Res call({List<SubmissionForm> submissions});
}

/// @nodoc
class _$ExitFormRequestCopyWithImpl<$Res, $Val extends ExitFormRequest>
    implements $ExitFormRequestCopyWith<$Res> {
  _$ExitFormRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExitFormRequest
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
abstract class _$$ExitFormRequestImplCopyWith<$Res>
    implements $ExitFormRequestCopyWith<$Res> {
  factory _$$ExitFormRequestImplCopyWith(_$ExitFormRequestImpl value,
          $Res Function(_$ExitFormRequestImpl) then) =
      __$$ExitFormRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubmissionForm> submissions});
}

/// @nodoc
class __$$ExitFormRequestImplCopyWithImpl<$Res>
    extends _$ExitFormRequestCopyWithImpl<$Res, _$ExitFormRequestImpl>
    implements _$$ExitFormRequestImplCopyWith<$Res> {
  __$$ExitFormRequestImplCopyWithImpl(
      _$ExitFormRequestImpl _value, $Res Function(_$ExitFormRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExitFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissions = null,
  }) {
    return _then(_$ExitFormRequestImpl(
      submissions: null == submissions
          ? _value._submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<SubmissionForm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExitFormRequestImpl implements _ExitFormRequest {
  const _$ExitFormRequestImpl({required final List<SubmissionForm> submissions})
      : _submissions = submissions;

  factory _$ExitFormRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExitFormRequestImplFromJson(json);

  final List<SubmissionForm> _submissions;
  @override
  List<SubmissionForm> get submissions {
    if (_submissions is EqualUnmodifiableListView) return _submissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submissions);
  }

  @override
  String toString() {
    return 'ExitFormRequest(submissions: $submissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExitFormRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._submissions, _submissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_submissions));

  /// Create a copy of ExitFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExitFormRequestImplCopyWith<_$ExitFormRequestImpl> get copyWith =>
      __$$ExitFormRequestImplCopyWithImpl<_$ExitFormRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExitFormRequestImplToJson(
      this,
    );
  }
}

abstract class _ExitFormRequest implements ExitFormRequest {
  const factory _ExitFormRequest(
          {required final List<SubmissionForm> submissions}) =
      _$ExitFormRequestImpl;

  factory _ExitFormRequest.fromJson(Map<String, dynamic> json) =
      _$ExitFormRequestImpl.fromJson;

  @override
  List<SubmissionForm> get submissions;

  /// Create a copy of ExitFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExitFormRequestImplCopyWith<_$ExitFormRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
