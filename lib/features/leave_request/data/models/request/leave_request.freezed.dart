// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) {
  return _LeaveRequest.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequest {
  @JsonKey(name: 'leave_type_id')
  int get leaveTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment', includeIfNull: false)
  String? get attachment => throw _privateConstructorUsedError;

  /// Serializes this LeaveRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestCopyWith<LeaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestCopyWith<$Res> {
  factory $LeaveRequestCopyWith(
          LeaveRequest value, $Res Function(LeaveRequest) then) =
      _$LeaveRequestCopyWithImpl<$Res, LeaveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'leave_type_id') int leaveTypeId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String reason,
      @JsonKey(name: 'attachment', includeIfNull: false) String? attachment});
}

/// @nodoc
class _$LeaveRequestCopyWithImpl<$Res, $Val extends LeaveRequest>
    implements $LeaveRequestCopyWith<$Res> {
  _$LeaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveTypeId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? reason = null,
    Object? attachment = freezed,
  }) {
    return _then(_value.copyWith(
      leaveTypeId: null == leaveTypeId
          ? _value.leaveTypeId
          : leaveTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRequestImplCopyWith<$Res>
    implements $LeaveRequestCopyWith<$Res> {
  factory _$$LeaveRequestImplCopyWith(
          _$LeaveRequestImpl value, $Res Function(_$LeaveRequestImpl) then) =
      __$$LeaveRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'leave_type_id') int leaveTypeId,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      String reason,
      @JsonKey(name: 'attachment', includeIfNull: false) String? attachment});
}

/// @nodoc
class __$$LeaveRequestImplCopyWithImpl<$Res>
    extends _$LeaveRequestCopyWithImpl<$Res, _$LeaveRequestImpl>
    implements _$$LeaveRequestImplCopyWith<$Res> {
  __$$LeaveRequestImplCopyWithImpl(
      _$LeaveRequestImpl _value, $Res Function(_$LeaveRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveTypeId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? reason = null,
    Object? attachment = freezed,
  }) {
    return _then(_$LeaveRequestImpl(
      leaveTypeId: null == leaveTypeId
          ? _value.leaveTypeId
          : leaveTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestImpl implements _LeaveRequest {
  const _$LeaveRequestImpl(
      {@JsonKey(name: 'leave_type_id') required this.leaveTypeId,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.reason,
      @JsonKey(name: 'attachment', includeIfNull: false) this.attachment});

  factory _$LeaveRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestImplFromJson(json);

  @override
  @JsonKey(name: 'leave_type_id')
  final int leaveTypeId;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final String reason;
  @override
  @JsonKey(name: 'attachment', includeIfNull: false)
  final String? attachment;

  @override
  String toString() {
    return 'LeaveRequest(leaveTypeId: $leaveTypeId, startDate: $startDate, endDate: $endDate, reason: $reason, attachment: $attachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestImpl &&
            (identical(other.leaveTypeId, leaveTypeId) ||
                other.leaveTypeId == leaveTypeId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, leaveTypeId, startDate, endDate, reason, attachment);

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      __$$LeaveRequestImplCopyWithImpl<_$LeaveRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestImplToJson(
      this,
    );
  }
}

abstract class _LeaveRequest implements LeaveRequest {
  const factory _LeaveRequest(
      {@JsonKey(name: 'leave_type_id') required final int leaveTypeId,
      @JsonKey(name: 'start_date') required final String startDate,
      @JsonKey(name: 'end_date') required final String endDate,
      required final String reason,
      @JsonKey(name: 'attachment', includeIfNull: false)
      final String? attachment}) = _$LeaveRequestImpl;

  factory _LeaveRequest.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestImpl.fromJson;

  @override
  @JsonKey(name: 'leave_type_id')
  int get leaveTypeId;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  String get reason;
  @override
  @JsonKey(name: 'attachment', includeIfNull: false)
  String? get attachment;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveGroup _$LeaveGroupFromJson(Map<String, dynamic> json) {
  return _LeaveGroup.fromJson(json);
}

/// @nodoc
mixin _$LeaveGroup {
  String get date => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  List<LeaveHistoryItem> get leaves => throw _privateConstructorUsedError;

  /// Serializes this LeaveGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveGroupCopyWith<LeaveGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveGroupCopyWith<$Res> {
  factory $LeaveGroupCopyWith(
          LeaveGroup value, $Res Function(LeaveGroup) then) =
      _$LeaveGroupCopyWithImpl<$Res, LeaveGroup>;
  @useResult
  $Res call({String date, String label, List<LeaveHistoryItem> leaves});
}

/// @nodoc
class _$LeaveGroupCopyWithImpl<$Res, $Val extends LeaveGroup>
    implements $LeaveGroupCopyWith<$Res> {
  _$LeaveGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? label = null,
    Object? leaves = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      leaves: null == leaves
          ? _value.leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as List<LeaveHistoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveGroupImplCopyWith<$Res>
    implements $LeaveGroupCopyWith<$Res> {
  factory _$$LeaveGroupImplCopyWith(
          _$LeaveGroupImpl value, $Res Function(_$LeaveGroupImpl) then) =
      __$$LeaveGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String label, List<LeaveHistoryItem> leaves});
}

/// @nodoc
class __$$LeaveGroupImplCopyWithImpl<$Res>
    extends _$LeaveGroupCopyWithImpl<$Res, _$LeaveGroupImpl>
    implements _$$LeaveGroupImplCopyWith<$Res> {
  __$$LeaveGroupImplCopyWithImpl(
      _$LeaveGroupImpl _value, $Res Function(_$LeaveGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? label = null,
    Object? leaves = null,
  }) {
    return _then(_$LeaveGroupImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      leaves: null == leaves
          ? _value._leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as List<LeaveHistoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveGroupImpl implements _LeaveGroup {
  const _$LeaveGroupImpl(
      {required this.date,
      required this.label,
      required final List<LeaveHistoryItem> leaves})
      : _leaves = leaves;

  factory _$LeaveGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveGroupImplFromJson(json);

  @override
  final String date;
  @override
  final String label;
  final List<LeaveHistoryItem> _leaves;
  @override
  List<LeaveHistoryItem> get leaves {
    if (_leaves is EqualUnmodifiableListView) return _leaves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaves);
  }

  @override
  String toString() {
    return 'LeaveGroup(date: $date, label: $label, leaves: $leaves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveGroupImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._leaves, _leaves));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, label, const DeepCollectionEquality().hash(_leaves));

  /// Create a copy of LeaveGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveGroupImplCopyWith<_$LeaveGroupImpl> get copyWith =>
      __$$LeaveGroupImplCopyWithImpl<_$LeaveGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveGroupImplToJson(
      this,
    );
  }
}

abstract class _LeaveGroup implements LeaveGroup {
  const factory _LeaveGroup(
      {required final String date,
      required final String label,
      required final List<LeaveHistoryItem> leaves}) = _$LeaveGroupImpl;

  factory _LeaveGroup.fromJson(Map<String, dynamic> json) =
      _$LeaveGroupImpl.fromJson;

  @override
  String get date;
  @override
  String get label;
  @override
  List<LeaveHistoryItem> get leaves;

  /// Create a copy of LeaveGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveGroupImplCopyWith<_$LeaveGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveHistoryItem _$LeaveHistoryItemFromJson(Map<String, dynamic> json) {
  return _LeaveHistoryItem.fromJson(json);
}

/// @nodoc
mixin _$LeaveHistoryItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  LeaveTypes get leaveType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String get statusLabel => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this LeaveHistoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveHistoryItemCopyWith<LeaveHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveHistoryItemCopyWith<$Res> {
  factory $LeaveHistoryItemCopyWith(
          LeaveHistoryItem value, $Res Function(LeaveHistoryItem) then) =
      _$LeaveHistoryItemCopyWithImpl<$Res, LeaveHistoryItem>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'leave_type') LeaveTypes leaveType,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int day,
      String reason,
      int status,
      @JsonKey(name: 'status_label') String statusLabel,
      String? attachment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  $LeaveTypesCopyWith<$Res> get leaveType;
}

/// @nodoc
class _$LeaveHistoryItemCopyWithImpl<$Res, $Val extends LeaveHistoryItem>
    implements $LeaveHistoryItemCopyWith<$Res> {
  _$LeaveHistoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? leaveType = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? day = null,
    Object? reason = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? attachment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as LeaveTypes,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveTypesCopyWith<$Res> get leaveType {
    return $LeaveTypesCopyWith<$Res>(_value.leaveType, (value) {
      return _then(_value.copyWith(leaveType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaveHistoryItemImplCopyWith<$Res>
    implements $LeaveHistoryItemCopyWith<$Res> {
  factory _$$LeaveHistoryItemImplCopyWith(_$LeaveHistoryItemImpl value,
          $Res Function(_$LeaveHistoryItemImpl) then) =
      __$$LeaveHistoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'leave_type') LeaveTypes leaveType,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int day,
      String reason,
      int status,
      @JsonKey(name: 'status_label') String statusLabel,
      String? attachment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  @override
  $LeaveTypesCopyWith<$Res> get leaveType;
}

/// @nodoc
class __$$LeaveHistoryItemImplCopyWithImpl<$Res>
    extends _$LeaveHistoryItemCopyWithImpl<$Res, _$LeaveHistoryItemImpl>
    implements _$$LeaveHistoryItemImplCopyWith<$Res> {
  __$$LeaveHistoryItemImplCopyWithImpl(_$LeaveHistoryItemImpl _value,
      $Res Function(_$LeaveHistoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? leaveType = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? day = null,
    Object? reason = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? attachment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LeaveHistoryItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as LeaveTypes,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveHistoryItemImpl implements _LeaveHistoryItem {
  const _$LeaveHistoryItemImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'leave_type') required this.leaveType,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.day,
      required this.reason,
      required this.status,
      @JsonKey(name: 'status_label') required this.statusLabel,
      this.attachment,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$LeaveHistoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveHistoryItemImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'leave_type')
  final LeaveTypes leaveType;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final int day;
  @override
  final String reason;
  @override
  final int status;
  @override
  @JsonKey(name: 'status_label')
  final String statusLabel;
  @override
  final String? attachment;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'LeaveHistoryItem(id: $id, userId: $userId, leaveType: $leaveType, startDate: $startDate, endDate: $endDate, day: $day, reason: $reason, status: $status, statusLabel: $statusLabel, attachment: $attachment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveHistoryItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      leaveType,
      startDate,
      endDate,
      day,
      reason,
      status,
      statusLabel,
      attachment,
      createdAt,
      updatedAt);

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveHistoryItemImplCopyWith<_$LeaveHistoryItemImpl> get copyWith =>
      __$$LeaveHistoryItemImplCopyWithImpl<_$LeaveHistoryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveHistoryItemImplToJson(
      this,
    );
  }
}

abstract class _LeaveHistoryItem implements LeaveHistoryItem {
  const factory _LeaveHistoryItem(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'leave_type') required final LeaveTypes leaveType,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          required final int day,
          required final String reason,
          required final int status,
          @JsonKey(name: 'status_label') required final String statusLabel,
          final String? attachment,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$LeaveHistoryItemImpl;

  factory _LeaveHistoryItem.fromJson(Map<String, dynamic> json) =
      _$LeaveHistoryItemImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'leave_type')
  LeaveTypes get leaveType;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  int get day;
  @override
  String get reason;
  @override
  int get status;
  @override
  @JsonKey(name: 'status_label')
  String get statusLabel;
  @override
  String? get attachment;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of LeaveHistoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveHistoryItemImplCopyWith<_$LeaveHistoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveTypes _$LeaveTypesFromJson(Map<String, dynamic> json) {
  return _LeaveType.fromJson(json);
}

/// @nodoc
mixin _$LeaveTypes {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this LeaveTypes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveTypesCopyWith<LeaveTypes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveTypesCopyWith<$Res> {
  factory $LeaveTypesCopyWith(
          LeaveTypes value, $Res Function(LeaveTypes) then) =
      _$LeaveTypesCopyWithImpl<$Res, LeaveTypes>;
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class _$LeaveTypesCopyWithImpl<$Res, $Val extends LeaveTypes>
    implements $LeaveTypesCopyWith<$Res> {
  _$LeaveTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveTypeImplCopyWith<$Res>
    implements $LeaveTypesCopyWith<$Res> {
  factory _$$LeaveTypeImplCopyWith(
          _$LeaveTypeImpl value, $Res Function(_$LeaveTypeImpl) then) =
      __$$LeaveTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class __$$LeaveTypeImplCopyWithImpl<$Res>
    extends _$LeaveTypesCopyWithImpl<$Res, _$LeaveTypeImpl>
    implements _$$LeaveTypeImplCopyWith<$Res> {
  __$$LeaveTypeImplCopyWithImpl(
      _$LeaveTypeImpl _value, $Res Function(_$LeaveTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveTypes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$LeaveTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveTypeImpl implements _LeaveType {
  const _$LeaveTypeImpl(
      {required this.id, required this.name, this.description});

  factory _$LeaveTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'LeaveTypes(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of LeaveTypes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveTypeImplCopyWith<_$LeaveTypeImpl> get copyWith =>
      __$$LeaveTypeImplCopyWithImpl<_$LeaveTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveTypeImplToJson(
      this,
    );
  }
}

abstract class _LeaveType implements LeaveTypes {
  const factory _LeaveType(
      {required final int id,
      required final String name,
      final String? description}) = _$LeaveTypeImpl;

  factory _LeaveType.fromJson(Map<String, dynamic> json) =
      _$LeaveTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;

  /// Create a copy of LeaveTypes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveTypeImplCopyWith<_$LeaveTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveDetail _$LeaveDetailFromJson(Map<String, dynamic> json) {
  return _LeaveDetail.fromJson(json);
}

/// @nodoc
mixin _$LeaveDetail {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_type')
  LeaveDetailLeaveType get leaveType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String get statusLabel => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;
  LeaveDetailUser get user => throw _privateConstructorUsedError;
  List<LeaveDetailApprover> get approvers => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this LeaveDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveDetailCopyWith<LeaveDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDetailCopyWith<$Res> {
  factory $LeaveDetailCopyWith(
          LeaveDetail value, $Res Function(LeaveDetail) then) =
      _$LeaveDetailCopyWithImpl<$Res, LeaveDetail>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'leave_type') LeaveDetailLeaveType leaveType,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int day,
      String reason,
      int status,
      @JsonKey(name: 'status_label') String statusLabel,
      String? attachment,
      LeaveDetailUser user,
      List<LeaveDetailApprover> approvers,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  $LeaveDetailLeaveTypeCopyWith<$Res> get leaveType;
  $LeaveDetailUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LeaveDetailCopyWithImpl<$Res, $Val extends LeaveDetail>
    implements $LeaveDetailCopyWith<$Res> {
  _$LeaveDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? leaveType = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? day = null,
    Object? reason = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? attachment = freezed,
    Object? user = null,
    Object? approvers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as LeaveDetailLeaveType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LeaveDetailUser,
      approvers: null == approvers
          ? _value.approvers
          : approvers // ignore: cast_nullable_to_non_nullable
              as List<LeaveDetailApprover>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveDetailLeaveTypeCopyWith<$Res> get leaveType {
    return $LeaveDetailLeaveTypeCopyWith<$Res>(_value.leaveType, (value) {
      return _then(_value.copyWith(leaveType: value) as $Val);
    });
  }

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveDetailUserCopyWith<$Res> get user {
    return $LeaveDetailUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaveDetailImplCopyWith<$Res>
    implements $LeaveDetailCopyWith<$Res> {
  factory _$$LeaveDetailImplCopyWith(
          _$LeaveDetailImpl value, $Res Function(_$LeaveDetailImpl) then) =
      __$$LeaveDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'leave_type') LeaveDetailLeaveType leaveType,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      int day,
      String reason,
      int status,
      @JsonKey(name: 'status_label') String statusLabel,
      String? attachment,
      LeaveDetailUser user,
      List<LeaveDetailApprover> approvers,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  @override
  $LeaveDetailLeaveTypeCopyWith<$Res> get leaveType;
  @override
  $LeaveDetailUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LeaveDetailImplCopyWithImpl<$Res>
    extends _$LeaveDetailCopyWithImpl<$Res, _$LeaveDetailImpl>
    implements _$$LeaveDetailImplCopyWith<$Res> {
  __$$LeaveDetailImplCopyWithImpl(
      _$LeaveDetailImpl _value, $Res Function(_$LeaveDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? leaveType = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? day = null,
    Object? reason = null,
    Object? status = null,
    Object? statusLabel = null,
    Object? attachment = freezed,
    Object? user = null,
    Object? approvers = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LeaveDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as LeaveDetailLeaveType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusLabel: null == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LeaveDetailUser,
      approvers: null == approvers
          ? _value._approvers
          : approvers // ignore: cast_nullable_to_non_nullable
              as List<LeaveDetailApprover>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveDetailImpl implements _LeaveDetail {
  const _$LeaveDetailImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'leave_type') required this.leaveType,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      required this.day,
      required this.reason,
      required this.status,
      @JsonKey(name: 'status_label') required this.statusLabel,
      this.attachment,
      required this.user,
      required final List<LeaveDetailApprover> approvers,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _approvers = approvers;

  factory _$LeaveDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveDetailImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'leave_type')
  final LeaveDetailLeaveType leaveType;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  final int day;
  @override
  final String reason;
  @override
  final int status;
  @override
  @JsonKey(name: 'status_label')
  final String statusLabel;
  @override
  final String? attachment;
  @override
  final LeaveDetailUser user;
  final List<LeaveDetailApprover> _approvers;
  @override
  List<LeaveDetailApprover> get approvers {
    if (_approvers is EqualUnmodifiableListView) return _approvers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_approvers);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'LeaveDetail(id: $id, userId: $userId, leaveType: $leaveType, startDate: $startDate, endDate: $endDate, day: $day, reason: $reason, status: $status, statusLabel: $statusLabel, attachment: $attachment, user: $user, approvers: $approvers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._approvers, _approvers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      leaveType,
      startDate,
      endDate,
      day,
      reason,
      status,
      statusLabel,
      attachment,
      user,
      const DeepCollectionEquality().hash(_approvers),
      createdAt,
      updatedAt);

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveDetailImplCopyWith<_$LeaveDetailImpl> get copyWith =>
      __$$LeaveDetailImplCopyWithImpl<_$LeaveDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveDetailImplToJson(
      this,
    );
  }
}

abstract class _LeaveDetail implements LeaveDetail {
  const factory _LeaveDetail(
          {required final int id,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'leave_type')
          required final LeaveDetailLeaveType leaveType,
          @JsonKey(name: 'start_date') required final String startDate,
          @JsonKey(name: 'end_date') required final String endDate,
          required final int day,
          required final String reason,
          required final int status,
          @JsonKey(name: 'status_label') required final String statusLabel,
          final String? attachment,
          required final LeaveDetailUser user,
          required final List<LeaveDetailApprover> approvers,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$LeaveDetailImpl;

  factory _LeaveDetail.fromJson(Map<String, dynamic> json) =
      _$LeaveDetailImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'leave_type')
  LeaveDetailLeaveType get leaveType;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  int get day;
  @override
  String get reason;
  @override
  int get status;
  @override
  @JsonKey(name: 'status_label')
  String get statusLabel;
  @override
  String? get attachment;
  @override
  LeaveDetailUser get user;
  @override
  List<LeaveDetailApprover> get approvers;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of LeaveDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveDetailImplCopyWith<_$LeaveDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveDetailLeaveType _$LeaveDetailLeaveTypeFromJson(Map<String, dynamic> json) {
  return _LeaveDetailLeaveType.fromJson(json);
}

/// @nodoc
mixin _$LeaveDetailLeaveType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this LeaveDetailLeaveType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveDetailLeaveType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveDetailLeaveTypeCopyWith<LeaveDetailLeaveType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDetailLeaveTypeCopyWith<$Res> {
  factory $LeaveDetailLeaveTypeCopyWith(LeaveDetailLeaveType value,
          $Res Function(LeaveDetailLeaveType) then) =
      _$LeaveDetailLeaveTypeCopyWithImpl<$Res, LeaveDetailLeaveType>;
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class _$LeaveDetailLeaveTypeCopyWithImpl<$Res,
        $Val extends LeaveDetailLeaveType>
    implements $LeaveDetailLeaveTypeCopyWith<$Res> {
  _$LeaveDetailLeaveTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveDetailLeaveType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveDetailLeaveTypeImplCopyWith<$Res>
    implements $LeaveDetailLeaveTypeCopyWith<$Res> {
  factory _$$LeaveDetailLeaveTypeImplCopyWith(_$LeaveDetailLeaveTypeImpl value,
          $Res Function(_$LeaveDetailLeaveTypeImpl) then) =
      __$$LeaveDetailLeaveTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? description});
}

/// @nodoc
class __$$LeaveDetailLeaveTypeImplCopyWithImpl<$Res>
    extends _$LeaveDetailLeaveTypeCopyWithImpl<$Res, _$LeaveDetailLeaveTypeImpl>
    implements _$$LeaveDetailLeaveTypeImplCopyWith<$Res> {
  __$$LeaveDetailLeaveTypeImplCopyWithImpl(_$LeaveDetailLeaveTypeImpl _value,
      $Res Function(_$LeaveDetailLeaveTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveDetailLeaveType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$LeaveDetailLeaveTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveDetailLeaveTypeImpl implements _LeaveDetailLeaveType {
  const _$LeaveDetailLeaveTypeImpl(
      {required this.id, required this.name, this.description});

  factory _$LeaveDetailLeaveTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveDetailLeaveTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString() {
    return 'LeaveDetailLeaveType(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveDetailLeaveTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of LeaveDetailLeaveType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveDetailLeaveTypeImplCopyWith<_$LeaveDetailLeaveTypeImpl>
      get copyWith =>
          __$$LeaveDetailLeaveTypeImplCopyWithImpl<_$LeaveDetailLeaveTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveDetailLeaveTypeImplToJson(
      this,
    );
  }
}

abstract class _LeaveDetailLeaveType implements LeaveDetailLeaveType {
  const factory _LeaveDetailLeaveType(
      {required final int id,
      required final String name,
      final String? description}) = _$LeaveDetailLeaveTypeImpl;

  factory _LeaveDetailLeaveType.fromJson(Map<String, dynamic> json) =
      _$LeaveDetailLeaveTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;

  /// Create a copy of LeaveDetailLeaveType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveDetailLeaveTypeImplCopyWith<_$LeaveDetailLeaveTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeaveDetailUser _$LeaveDetailUserFromJson(Map<String, dynamic> json) {
  return _LeaveDetailUser.fromJson(json);
}

/// @nodoc
mixin _$LeaveDetailUser {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this LeaveDetailUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveDetailUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveDetailUserCopyWith<LeaveDetailUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDetailUserCopyWith<$Res> {
  factory $LeaveDetailUserCopyWith(
          LeaveDetailUser value, $Res Function(LeaveDetailUser) then) =
      _$LeaveDetailUserCopyWithImpl<$Res, LeaveDetailUser>;
  @useResult
  $Res call({int id, String name, String? email});
}

/// @nodoc
class _$LeaveDetailUserCopyWithImpl<$Res, $Val extends LeaveDetailUser>
    implements $LeaveDetailUserCopyWith<$Res> {
  _$LeaveDetailUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveDetailUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveDetailUserImplCopyWith<$Res>
    implements $LeaveDetailUserCopyWith<$Res> {
  factory _$$LeaveDetailUserImplCopyWith(_$LeaveDetailUserImpl value,
          $Res Function(_$LeaveDetailUserImpl) then) =
      __$$LeaveDetailUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? email});
}

/// @nodoc
class __$$LeaveDetailUserImplCopyWithImpl<$Res>
    extends _$LeaveDetailUserCopyWithImpl<$Res, _$LeaveDetailUserImpl>
    implements _$$LeaveDetailUserImplCopyWith<$Res> {
  __$$LeaveDetailUserImplCopyWithImpl(
      _$LeaveDetailUserImpl _value, $Res Function(_$LeaveDetailUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveDetailUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = freezed,
  }) {
    return _then(_$LeaveDetailUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveDetailUserImpl implements _LeaveDetailUser {
  const _$LeaveDetailUserImpl(
      {required this.id, required this.name, this.email});

  factory _$LeaveDetailUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveDetailUserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? email;

  @override
  String toString() {
    return 'LeaveDetailUser(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveDetailUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  /// Create a copy of LeaveDetailUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveDetailUserImplCopyWith<_$LeaveDetailUserImpl> get copyWith =>
      __$$LeaveDetailUserImplCopyWithImpl<_$LeaveDetailUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveDetailUserImplToJson(
      this,
    );
  }
}

abstract class _LeaveDetailUser implements LeaveDetailUser {
  const factory _LeaveDetailUser(
      {required final int id,
      required final String name,
      final String? email}) = _$LeaveDetailUserImpl;

  factory _LeaveDetailUser.fromJson(Map<String, dynamic> json) =
      _$LeaveDetailUserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get email;

  /// Create a copy of LeaveDetailUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveDetailUserImplCopyWith<_$LeaveDetailUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveDetailApprover _$LeaveDetailApproverFromJson(Map<String, dynamic> json) {
  return _LeaveDetailApprover.fromJson(json);
}

/// @nodoc
mixin _$LeaveDetailApprover {
  int get id => throw _privateConstructorUsedError;
  LeaveDetailUser get user => throw _privateConstructorUsedError;

  /// Serializes this LeaveDetailApprover to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveDetailApproverCopyWith<LeaveDetailApprover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDetailApproverCopyWith<$Res> {
  factory $LeaveDetailApproverCopyWith(
          LeaveDetailApprover value, $Res Function(LeaveDetailApprover) then) =
      _$LeaveDetailApproverCopyWithImpl<$Res, LeaveDetailApprover>;
  @useResult
  $Res call({int id, LeaveDetailUser user});

  $LeaveDetailUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LeaveDetailApproverCopyWithImpl<$Res, $Val extends LeaveDetailApprover>
    implements $LeaveDetailApproverCopyWith<$Res> {
  _$LeaveDetailApproverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LeaveDetailUser,
    ) as $Val);
  }

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveDetailUserCopyWith<$Res> get user {
    return $LeaveDetailUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaveDetailApproverImplCopyWith<$Res>
    implements $LeaveDetailApproverCopyWith<$Res> {
  factory _$$LeaveDetailApproverImplCopyWith(_$LeaveDetailApproverImpl value,
          $Res Function(_$LeaveDetailApproverImpl) then) =
      __$$LeaveDetailApproverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, LeaveDetailUser user});

  @override
  $LeaveDetailUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LeaveDetailApproverImplCopyWithImpl<$Res>
    extends _$LeaveDetailApproverCopyWithImpl<$Res, _$LeaveDetailApproverImpl>
    implements _$$LeaveDetailApproverImplCopyWith<$Res> {
  __$$LeaveDetailApproverImplCopyWithImpl(_$LeaveDetailApproverImpl _value,
      $Res Function(_$LeaveDetailApproverImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$LeaveDetailApproverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LeaveDetailUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveDetailApproverImpl implements _LeaveDetailApprover {
  const _$LeaveDetailApproverImpl({required this.id, required this.user});

  factory _$LeaveDetailApproverImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveDetailApproverImplFromJson(json);

  @override
  final int id;
  @override
  final LeaveDetailUser user;

  @override
  String toString() {
    return 'LeaveDetailApprover(id: $id, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveDetailApproverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user);

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveDetailApproverImplCopyWith<_$LeaveDetailApproverImpl> get copyWith =>
      __$$LeaveDetailApproverImplCopyWithImpl<_$LeaveDetailApproverImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveDetailApproverImplToJson(
      this,
    );
  }
}

abstract class _LeaveDetailApprover implements LeaveDetailApprover {
  const factory _LeaveDetailApprover(
      {required final int id,
      required final LeaveDetailUser user}) = _$LeaveDetailApproverImpl;

  factory _LeaveDetailApprover.fromJson(Map<String, dynamic> json) =
      _$LeaveDetailApproverImpl.fromJson;

  @override
  int get id;
  @override
  LeaveDetailUser get user;

  /// Create a copy of LeaveDetailApprover
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveDetailApproverImplCopyWith<_$LeaveDetailApproverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
