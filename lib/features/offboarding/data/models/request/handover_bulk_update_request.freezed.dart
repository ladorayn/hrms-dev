// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_bulk_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HandoverRequest _$HandoverRequestFromJson(Map<String, dynamic> json) {
  return _HandoverRequest.fromJson(json);
}

/// @nodoc
mixin _$HandoverRequest {
  List<HandoverItemRequest> get data => throw _privateConstructorUsedError;

  /// Serializes this HandoverRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HandoverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HandoverRequestCopyWith<HandoverRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandoverRequestCopyWith<$Res> {
  factory $HandoverRequestCopyWith(
          HandoverRequest value, $Res Function(HandoverRequest) then) =
      _$HandoverRequestCopyWithImpl<$Res, HandoverRequest>;
  @useResult
  $Res call({List<HandoverItemRequest> data});
}

/// @nodoc
class _$HandoverRequestCopyWithImpl<$Res, $Val extends HandoverRequest>
    implements $HandoverRequestCopyWith<$Res> {
  _$HandoverRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HandoverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HandoverItemRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandoverRequestImplCopyWith<$Res>
    implements $HandoverRequestCopyWith<$Res> {
  factory _$$HandoverRequestImplCopyWith(_$HandoverRequestImpl value,
          $Res Function(_$HandoverRequestImpl) then) =
      __$$HandoverRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HandoverItemRequest> data});
}

/// @nodoc
class __$$HandoverRequestImplCopyWithImpl<$Res>
    extends _$HandoverRequestCopyWithImpl<$Res, _$HandoverRequestImpl>
    implements _$$HandoverRequestImplCopyWith<$Res> {
  __$$HandoverRequestImplCopyWithImpl(
      _$HandoverRequestImpl _value, $Res Function(_$HandoverRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of HandoverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HandoverRequestImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HandoverItemRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HandoverRequestImpl implements _HandoverRequest {
  const _$HandoverRequestImpl({required final List<HandoverItemRequest> data})
      : _data = data;

  factory _$HandoverRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HandoverRequestImplFromJson(json);

  final List<HandoverItemRequest> _data;
  @override
  List<HandoverItemRequest> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HandoverRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandoverRequestImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HandoverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandoverRequestImplCopyWith<_$HandoverRequestImpl> get copyWith =>
      __$$HandoverRequestImplCopyWithImpl<_$HandoverRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HandoverRequestImplToJson(
      this,
    );
  }
}

abstract class _HandoverRequest implements HandoverRequest {
  const factory _HandoverRequest(
      {required final List<HandoverItemRequest> data}) = _$HandoverRequestImpl;

  factory _HandoverRequest.fromJson(Map<String, dynamic> json) =
      _$HandoverRequestImpl.fromJson;

  @override
  List<HandoverItemRequest> get data;

  /// Create a copy of HandoverRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandoverRequestImplCopyWith<_$HandoverRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HandoverItemRequest _$HandoverItemRequestFromJson(Map<String, dynamic> json) {
  return _HandoverItemRequest.fromJson(json);
}

/// @nodoc
mixin _$HandoverItemRequest {
  /// "work", "document", "equipment", "facility"
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<RecipientRequest> get recipients => throw _privateConstructorUsedError;

  /// Serializes this HandoverItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HandoverItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HandoverItemRequestCopyWith<HandoverItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandoverItemRequestCopyWith<$Res> {
  factory $HandoverItemRequestCopyWith(
          HandoverItemRequest value, $Res Function(HandoverItemRequest) then) =
      _$HandoverItemRequestCopyWithImpl<$Res, HandoverItemRequest>;
  @useResult
  $Res call({String category, String name, List<RecipientRequest> recipients});
}

/// @nodoc
class _$HandoverItemRequestCopyWithImpl<$Res, $Val extends HandoverItemRequest>
    implements $HandoverItemRequestCopyWith<$Res> {
  _$HandoverItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HandoverItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? recipients = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<RecipientRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandoverItemRequestImplCopyWith<$Res>
    implements $HandoverItemRequestCopyWith<$Res> {
  factory _$$HandoverItemRequestImplCopyWith(_$HandoverItemRequestImpl value,
          $Res Function(_$HandoverItemRequestImpl) then) =
      __$$HandoverItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String name, List<RecipientRequest> recipients});
}

/// @nodoc
class __$$HandoverItemRequestImplCopyWithImpl<$Res>
    extends _$HandoverItemRequestCopyWithImpl<$Res, _$HandoverItemRequestImpl>
    implements _$$HandoverItemRequestImplCopyWith<$Res> {
  __$$HandoverItemRequestImplCopyWithImpl(_$HandoverItemRequestImpl _value,
      $Res Function(_$HandoverItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of HandoverItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? name = null,
    Object? recipients = null,
  }) {
    return _then(_$HandoverItemRequestImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<RecipientRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HandoverItemRequestImpl implements _HandoverItemRequest {
  const _$HandoverItemRequestImpl(
      {required this.category,
      required this.name,
      required final List<RecipientRequest> recipients})
      : _recipients = recipients;

  factory _$HandoverItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HandoverItemRequestImplFromJson(json);

  /// "work", "document", "equipment", "facility"
  @override
  final String category;
  @override
  final String name;
  final List<RecipientRequest> _recipients;
  @override
  List<RecipientRequest> get recipients {
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  String toString() {
    return 'HandoverItemRequest(category: $category, name: $name, recipients: $recipients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandoverItemRequestImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category, name,
      const DeepCollectionEquality().hash(_recipients));

  /// Create a copy of HandoverItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandoverItemRequestImplCopyWith<_$HandoverItemRequestImpl> get copyWith =>
      __$$HandoverItemRequestImplCopyWithImpl<_$HandoverItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HandoverItemRequestImplToJson(
      this,
    );
  }
}

abstract class _HandoverItemRequest implements HandoverItemRequest {
  const factory _HandoverItemRequest(
          {required final String category,
          required final String name,
          required final List<RecipientRequest> recipients}) =
      _$HandoverItemRequestImpl;

  factory _HandoverItemRequest.fromJson(Map<String, dynamic> json) =
      _$HandoverItemRequestImpl.fromJson;

  /// "work", "document", "equipment", "facility"
  @override
  String get category;
  @override
  String get name;
  @override
  List<RecipientRequest> get recipients;

  /// Create a copy of HandoverItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandoverItemRequestImplCopyWith<_$HandoverItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipientRequest _$RecipientRequestFromJson(Map<String, dynamic> json) {
  return _RecipientRequest.fromJson(json);
}

/// @nodoc
mixin _$RecipientRequest {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this RecipientRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipientRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipientRequestCopyWith<RecipientRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientRequestCopyWith<$Res> {
  factory $RecipientRequestCopyWith(
          RecipientRequest value, $Res Function(RecipientRequest) then) =
      _$RecipientRequestCopyWithImpl<$Res, RecipientRequest>;
  @useResult
  $Res call({@JsonKey(name: 'user_id') int userId, int status});
}

/// @nodoc
class _$RecipientRequestCopyWithImpl<$Res, $Val extends RecipientRequest>
    implements $RecipientRequestCopyWith<$Res> {
  _$RecipientRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipientRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientRequestImplCopyWith<$Res>
    implements $RecipientRequestCopyWith<$Res> {
  factory _$$RecipientRequestImplCopyWith(_$RecipientRequestImpl value,
          $Res Function(_$RecipientRequestImpl) then) =
      __$$RecipientRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'user_id') int userId, int status});
}

/// @nodoc
class __$$RecipientRequestImplCopyWithImpl<$Res>
    extends _$RecipientRequestCopyWithImpl<$Res, _$RecipientRequestImpl>
    implements _$$RecipientRequestImplCopyWith<$Res> {
  __$$RecipientRequestImplCopyWithImpl(_$RecipientRequestImpl _value,
      $Res Function(_$RecipientRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipientRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = null,
  }) {
    return _then(_$RecipientRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientRequestImpl implements _RecipientRequest {
  const _$RecipientRequestImpl(
      {@JsonKey(name: 'user_id') required this.userId, required this.status});

  factory _$RecipientRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientRequestImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final int status;

  @override
  String toString() {
    return 'RecipientRequest(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  /// Create a copy of RecipientRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientRequestImplCopyWith<_$RecipientRequestImpl> get copyWith =>
      __$$RecipientRequestImplCopyWithImpl<_$RecipientRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientRequestImplToJson(
      this,
    );
  }
}

abstract class _RecipientRequest implements RecipientRequest {
  const factory _RecipientRequest(
      {@JsonKey(name: 'user_id') required final int userId,
      required final int status}) = _$RecipientRequestImpl;

  factory _RecipientRequest.fromJson(Map<String, dynamic> json) =
      _$RecipientRequestImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  int get status;

  /// Create a copy of RecipientRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipientRequestImplCopyWith<_$RecipientRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
