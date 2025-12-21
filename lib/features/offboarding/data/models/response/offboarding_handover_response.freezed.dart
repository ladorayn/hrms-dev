// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offboarding_handover_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HandoverItem _$HandoverItemFromJson(Map<String, dynamic> json) {
  return _HandoverItem.fromJson(json);
}

/// @nodoc
mixin _$HandoverItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'offboarding_id')
  int? get offboardingId => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_return_date')
  String? get expectedReturnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_at')
  String? get receivedAt => throw _privateConstructorUsedError;
  dynamic get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  List<Recipient>? get recipients => throw _privateConstructorUsedError;

  /// Serializes this HandoverItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HandoverItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HandoverItemCopyWith<HandoverItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandoverItemCopyWith<$Res> {
  factory $HandoverItemCopyWith(
          HandoverItem value, $Res Function(HandoverItem) then) =
      _$HandoverItemCopyWithImpl<$Res, HandoverItem>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'offboarding_id') int? offboardingId,
      String? category,
      String? name,
      String? notes,
      int? status,
      @JsonKey(name: 'expected_return_date') String? expectedReturnDate,
      @JsonKey(name: 'received_at') String? receivedAt,
      dynamic meta,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'status_label') String? statusLabel,
      List<Recipient>? recipients});
}

/// @nodoc
class _$HandoverItemCopyWithImpl<$Res, $Val extends HandoverItem>
    implements $HandoverItemCopyWith<$Res> {
  _$HandoverItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HandoverItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offboardingId = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? expectedReturnDate = freezed,
    Object? receivedAt = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusLabel = freezed,
    Object? recipients = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offboardingId: freezed == offboardingId
          ? _value.offboardingId
          : offboardingId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedReturnDate: freezed == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      recipients: freezed == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandoverItemImplCopyWith<$Res>
    implements $HandoverItemCopyWith<$Res> {
  factory _$$HandoverItemImplCopyWith(
          _$HandoverItemImpl value, $Res Function(_$HandoverItemImpl) then) =
      __$$HandoverItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'offboarding_id') int? offboardingId,
      String? category,
      String? name,
      String? notes,
      int? status,
      @JsonKey(name: 'expected_return_date') String? expectedReturnDate,
      @JsonKey(name: 'received_at') String? receivedAt,
      dynamic meta,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'status_label') String? statusLabel,
      List<Recipient>? recipients});
}

/// @nodoc
class __$$HandoverItemImplCopyWithImpl<$Res>
    extends _$HandoverItemCopyWithImpl<$Res, _$HandoverItemImpl>
    implements _$$HandoverItemImplCopyWith<$Res> {
  __$$HandoverItemImplCopyWithImpl(
      _$HandoverItemImpl _value, $Res Function(_$HandoverItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HandoverItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? offboardingId = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? notes = freezed,
    Object? status = freezed,
    Object? expectedReturnDate = freezed,
    Object? receivedAt = freezed,
    Object? meta = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusLabel = freezed,
    Object? recipients = freezed,
  }) {
    return _then(_$HandoverItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      offboardingId: freezed == offboardingId
          ? _value.offboardingId
          : offboardingId // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      expectedReturnDate: freezed == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      recipients: freezed == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<Recipient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HandoverItemImpl implements _HandoverItem {
  const _$HandoverItemImpl(
      {this.id,
      @JsonKey(name: 'offboarding_id') this.offboardingId,
      this.category,
      this.name,
      this.notes,
      this.status,
      @JsonKey(name: 'expected_return_date') this.expectedReturnDate,
      @JsonKey(name: 'received_at') this.receivedAt,
      this.meta,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'status_label') this.statusLabel,
      final List<Recipient>? recipients})
      : _recipients = recipients;

  factory _$HandoverItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HandoverItemImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'offboarding_id')
  final int? offboardingId;
  @override
  final String? category;
  @override
  final String? name;
  @override
  final String? notes;
  @override
  final int? status;
  @override
  @JsonKey(name: 'expected_return_date')
  final String? expectedReturnDate;
  @override
  @JsonKey(name: 'received_at')
  final String? receivedAt;
  @override
  final dynamic meta;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  final List<Recipient>? _recipients;
  @override
  List<Recipient>? get recipients {
    final value = _recipients;
    if (value == null) return null;
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HandoverItem(id: $id, offboardingId: $offboardingId, category: $category, name: $name, notes: $notes, status: $status, expectedReturnDate: $expectedReturnDate, receivedAt: $receivedAt, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt, statusLabel: $statusLabel, recipients: $recipients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandoverItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.offboardingId, offboardingId) ||
                other.offboardingId == offboardingId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expectedReturnDate, expectedReturnDate) ||
                other.expectedReturnDate == expectedReturnDate) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      offboardingId,
      category,
      name,
      notes,
      status,
      expectedReturnDate,
      receivedAt,
      const DeepCollectionEquality().hash(meta),
      createdAt,
      updatedAt,
      statusLabel,
      const DeepCollectionEquality().hash(_recipients));

  /// Create a copy of HandoverItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandoverItemImplCopyWith<_$HandoverItemImpl> get copyWith =>
      __$$HandoverItemImplCopyWithImpl<_$HandoverItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HandoverItemImplToJson(
      this,
    );
  }
}

abstract class _HandoverItem implements HandoverItem {
  const factory _HandoverItem(
      {final int? id,
      @JsonKey(name: 'offboarding_id') final int? offboardingId,
      final String? category,
      final String? name,
      final String? notes,
      final int? status,
      @JsonKey(name: 'expected_return_date') final String? expectedReturnDate,
      @JsonKey(name: 'received_at') final String? receivedAt,
      final dynamic meta,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'status_label') final String? statusLabel,
      final List<Recipient>? recipients}) = _$HandoverItemImpl;

  factory _HandoverItem.fromJson(Map<String, dynamic> json) =
      _$HandoverItemImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'offboarding_id')
  int? get offboardingId;
  @override
  String? get category;
  @override
  String? get name;
  @override
  String? get notes;
  @override
  int? get status;
  @override
  @JsonKey(name: 'expected_return_date')
  String? get expectedReturnDate;
  @override
  @JsonKey(name: 'received_at')
  String? get receivedAt;
  @override
  dynamic get meta;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  List<Recipient>? get recipients;

  /// Create a copy of HandoverItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandoverItemImplCopyWith<_$HandoverItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipient _$RecipientFromJson(Map<String, dynamic> json) {
  return _Recipient.fromJson(json);
}

/// @nodoc
mixin _$Recipient {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'handover_item_id')
  int? get handoverItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  int? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_at')
  String? get receivedAt => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;

  /// Serializes this Recipient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipientCopyWith<Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res, Recipient>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'handover_item_id') int? handoverItemId,
      @JsonKey(name: 'user_id') int? userId,
      int? status,
      @JsonKey(name: 'updated_by') int? updatedBy,
      @JsonKey(name: 'received_at') String? receivedAt,
      String? remarks,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res, $Val extends Recipient>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? handoverItemId = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? updatedBy = freezed,
    Object? receivedAt = freezed,
    Object? remarks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      handoverItemId: freezed == handoverItemId
          ? _value.handoverItemId
          : handoverItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientImplCopyWith<$Res>
    implements $RecipientCopyWith<$Res> {
  factory _$$RecipientImplCopyWith(
          _$RecipientImpl value, $Res Function(_$RecipientImpl) then) =
      __$$RecipientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'handover_item_id') int? handoverItemId,
      @JsonKey(name: 'user_id') int? userId,
      int? status,
      @JsonKey(name: 'updated_by') int? updatedBy,
      @JsonKey(name: 'received_at') String? receivedAt,
      String? remarks,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'status_label') String? statusLabel});
}

/// @nodoc
class __$$RecipientImplCopyWithImpl<$Res>
    extends _$RecipientCopyWithImpl<$Res, _$RecipientImpl>
    implements _$$RecipientImplCopyWith<$Res> {
  __$$RecipientImplCopyWithImpl(
      _$RecipientImpl _value, $Res Function(_$RecipientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? handoverItemId = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? updatedBy = freezed,
    Object? receivedAt = freezed,
    Object? remarks = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(_$RecipientImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      handoverItemId: freezed == handoverItemId
          ? _value.handoverItemId
          : handoverItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      receivedAt: freezed == receivedAt
          ? _value.receivedAt
          : receivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientImpl implements _Recipient {
  const _$RecipientImpl(
      {this.id,
      @JsonKey(name: 'handover_item_id') this.handoverItemId,
      @JsonKey(name: 'user_id') this.userId,
      this.status,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'received_at') this.receivedAt,
      this.remarks,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'status_label') this.statusLabel});

  factory _$RecipientImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'handover_item_id')
  final int? handoverItemId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final int? status;
  @override
  @JsonKey(name: 'updated_by')
  final int? updatedBy;
  @override
  @JsonKey(name: 'received_at')
  final String? receivedAt;
  @override
  final String? remarks;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;

  @override
  String toString() {
    return 'Recipient(id: $id, handoverItemId: $handoverItemId, userId: $userId, status: $status, updatedBy: $updatedBy, receivedAt: $receivedAt, remarks: $remarks, createdAt: $createdAt, updatedAt: $updatedAt, statusLabel: $statusLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.handoverItemId, handoverItemId) ||
                other.handoverItemId == handoverItemId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.receivedAt, receivedAt) ||
                other.receivedAt == receivedAt) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      handoverItemId,
      userId,
      status,
      updatedBy,
      receivedAt,
      remarks,
      createdAt,
      updatedAt,
      statusLabel);

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      __$$RecipientImplCopyWithImpl<_$RecipientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientImplToJson(
      this,
    );
  }
}

abstract class _Recipient implements Recipient {
  const factory _Recipient(
          {final int? id,
          @JsonKey(name: 'handover_item_id') final int? handoverItemId,
          @JsonKey(name: 'user_id') final int? userId,
          final int? status,
          @JsonKey(name: 'updated_by') final int? updatedBy,
          @JsonKey(name: 'received_at') final String? receivedAt,
          final String? remarks,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'status_label') final String? statusLabel}) =
      _$RecipientImpl;

  factory _Recipient.fromJson(Map<String, dynamic> json) =
      _$RecipientImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'handover_item_id')
  int? get handoverItemId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  int? get status;
  @override
  @JsonKey(name: 'updated_by')
  int? get updatedBy;
  @override
  @JsonKey(name: 'received_at')
  String? get receivedAt;
  @override
  String? get remarks;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipientImplCopyWith<_$RecipientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
