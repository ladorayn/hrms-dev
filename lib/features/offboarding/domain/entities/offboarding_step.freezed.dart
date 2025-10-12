// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offboarding_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffboardingStepModel _$OffboardingStepModelFromJson(Map<String, dynamic> json) {
  return _OffboardingStepModel.fromJson(json);
}

/// @nodoc
mixin _$OffboardingStepModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this OffboardingStepModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffboardingStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffboardingStepModelCopyWith<OffboardingStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffboardingStepModelCopyWith<$Res> {
  factory $OffboardingStepModelCopyWith(OffboardingStepModel value,
          $Res Function(OffboardingStepModel) then) =
      _$OffboardingStepModelCopyWithImpl<$Res, OffboardingStepModel>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$OffboardingStepModelCopyWithImpl<$Res,
        $Val extends OffboardingStepModel>
    implements $OffboardingStepModelCopyWith<$Res> {
  _$OffboardingStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffboardingStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffboardingStepModelImplCopyWith<$Res>
    implements $OffboardingStepModelCopyWith<$Res> {
  factory _$$OffboardingStepModelImplCopyWith(_$OffboardingStepModelImpl value,
          $Res Function(_$OffboardingStepModelImpl) then) =
      __$$OffboardingStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$OffboardingStepModelImplCopyWithImpl<$Res>
    extends _$OffboardingStepModelCopyWithImpl<$Res, _$OffboardingStepModelImpl>
    implements _$$OffboardingStepModelImplCopyWith<$Res> {
  __$$OffboardingStepModelImplCopyWithImpl(_$OffboardingStepModelImpl _value,
      $Res Function(_$OffboardingStepModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OffboardingStepModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$OffboardingStepModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffboardingStepModelImpl implements _OffboardingStepModel {
  const _$OffboardingStepModelImpl(
      {required this.title, required this.description});

  factory _$OffboardingStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffboardingStepModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'OffboardingStepModel(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffboardingStepModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of OffboardingStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffboardingStepModelImplCopyWith<_$OffboardingStepModelImpl>
      get copyWith =>
          __$$OffboardingStepModelImplCopyWithImpl<_$OffboardingStepModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffboardingStepModelImplToJson(
      this,
    );
  }
}

abstract class _OffboardingStepModel implements OffboardingStepModel {
  const factory _OffboardingStepModel(
      {required final String title,
      required final String description}) = _$OffboardingStepModelImpl;

  factory _OffboardingStepModel.fromJson(Map<String, dynamic> json) =
      _$OffboardingStepModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;

  /// Create a copy of OffboardingStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffboardingStepModelImplCopyWith<_$OffboardingStepModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
