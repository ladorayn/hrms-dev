// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamMember _$TeamMemberFromJson(Map<String, dynamic> json) {
  return _TeamMember.fromJson(json);
}

/// @nodoc
mixin _$TeamMember {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_position_name')
  String? get jobPositionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_level_name')
  String? get jobLevelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_name')
  String? get departmentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_on')
  String? get submittedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'validated_on')
  String? get validatedOn => throw _privateConstructorUsedError;

  /// Serializes this TeamMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res, TeamMember>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'job_position_name') String? jobPositionName,
      @JsonKey(name: 'job_level_name') String? jobLevelName,
      @JsonKey(name: 'department_name') String? departmentName,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      @JsonKey(name: 'submitted_on') String? submittedOn,
      @JsonKey(name: 'validated_on') String? validatedOn});
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res, $Val extends TeamMember>
    implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? jobPositionName = freezed,
    Object? jobLevelName = freezed,
    Object? departmentName = freezed,
    Object? statusLabel = freezed,
    Object? photoProfileUrl = freezed,
    Object? submittedOn = freezed,
    Object? validatedOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPositionName: freezed == jobPositionName
          ? _value.jobPositionName
          : jobPositionName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLevelName: freezed == jobLevelName
          ? _value.jobLevelName
          : jobLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentName: freezed == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedOn: freezed == submittedOn
          ? _value.submittedOn
          : submittedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedOn: freezed == validatedOn
          ? _value.validatedOn
          : validatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamMemberImplCopyWith<$Res>
    implements $TeamMemberCopyWith<$Res> {
  factory _$$TeamMemberImplCopyWith(
          _$TeamMemberImpl value, $Res Function(_$TeamMemberImpl) then) =
      __$$TeamMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'job_position_name') String? jobPositionName,
      @JsonKey(name: 'job_level_name') String? jobLevelName,
      @JsonKey(name: 'department_name') String? departmentName,
      @JsonKey(name: 'status_label') String? statusLabel,
      @JsonKey(name: 'photo_profile_url') String? photoProfileUrl,
      @JsonKey(name: 'submitted_on') String? submittedOn,
      @JsonKey(name: 'validated_on') String? validatedOn});
}

/// @nodoc
class __$$TeamMemberImplCopyWithImpl<$Res>
    extends _$TeamMemberCopyWithImpl<$Res, _$TeamMemberImpl>
    implements _$$TeamMemberImplCopyWith<$Res> {
  __$$TeamMemberImplCopyWithImpl(
      _$TeamMemberImpl _value, $Res Function(_$TeamMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? jobPositionName = freezed,
    Object? jobLevelName = freezed,
    Object? departmentName = freezed,
    Object? statusLabel = freezed,
    Object? photoProfileUrl = freezed,
    Object? submittedOn = freezed,
    Object? validatedOn = freezed,
  }) {
    return _then(_$TeamMemberImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobPositionName: freezed == jobPositionName
          ? _value.jobPositionName
          : jobPositionName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobLevelName: freezed == jobLevelName
          ? _value.jobLevelName
          : jobLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentName: freezed == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLabel: freezed == statusLabel
          ? _value.statusLabel
          : statusLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      photoProfileUrl: freezed == photoProfileUrl
          ? _value.photoProfileUrl
          : photoProfileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submittedOn: freezed == submittedOn
          ? _value.submittedOn
          : submittedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      validatedOn: freezed == validatedOn
          ? _value.validatedOn
          : validatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamMemberImpl implements _TeamMember {
  const _$TeamMemberImpl(
      {this.id,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'job_position_name') this.jobPositionName,
      @JsonKey(name: 'job_level_name') this.jobLevelName,
      @JsonKey(name: 'department_name') this.departmentName,
      @JsonKey(name: 'status_label') this.statusLabel,
      @JsonKey(name: 'photo_profile_url') this.photoProfileUrl,
      @JsonKey(name: 'submitted_on') this.submittedOn,
      @JsonKey(name: 'validated_on') this.validatedOn});

  factory _$TeamMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamMemberImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'job_position_name')
  final String? jobPositionName;
  @override
  @JsonKey(name: 'job_level_name')
  final String? jobLevelName;
  @override
  @JsonKey(name: 'department_name')
  final String? departmentName;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'photo_profile_url')
  final String? photoProfileUrl;
  @override
  @JsonKey(name: 'submitted_on')
  final String? submittedOn;
  @override
  @JsonKey(name: 'validated_on')
  final String? validatedOn;

  @override
  String toString() {
    return 'TeamMember(id: $id, userName: $userName, jobPositionName: $jobPositionName, jobLevelName: $jobLevelName, departmentName: $departmentName, statusLabel: $statusLabel, photoProfileUrl: $photoProfileUrl, submittedOn: $submittedOn, validatedOn: $validatedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.jobPositionName, jobPositionName) ||
                other.jobPositionName == jobPositionName) &&
            (identical(other.jobLevelName, jobLevelName) ||
                other.jobLevelName == jobLevelName) &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.photoProfileUrl, photoProfileUrl) ||
                other.photoProfileUrl == photoProfileUrl) &&
            (identical(other.submittedOn, submittedOn) ||
                other.submittedOn == submittedOn) &&
            (identical(other.validatedOn, validatedOn) ||
                other.validatedOn == validatedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      jobPositionName,
      jobLevelName,
      departmentName,
      statusLabel,
      photoProfileUrl,
      submittedOn,
      validatedOn);

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamMemberImplCopyWith<_$TeamMemberImpl> get copyWith =>
      __$$TeamMemberImplCopyWithImpl<_$TeamMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamMemberImplToJson(
      this,
    );
  }
}

abstract class _TeamMember implements TeamMember {
  const factory _TeamMember(
          {final int? id,
          @JsonKey(name: 'user_name') final String? userName,
          @JsonKey(name: 'job_position_name') final String? jobPositionName,
          @JsonKey(name: 'job_level_name') final String? jobLevelName,
          @JsonKey(name: 'department_name') final String? departmentName,
          @JsonKey(name: 'status_label') final String? statusLabel,
          @JsonKey(name: 'photo_profile_url') final String? photoProfileUrl,
          @JsonKey(name: 'submitted_on') final String? submittedOn,
          @JsonKey(name: 'validated_on') final String? validatedOn}) =
      _$TeamMemberImpl;

  factory _TeamMember.fromJson(Map<String, dynamic> json) =
      _$TeamMemberImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'job_position_name')
  String? get jobPositionName;
  @override
  @JsonKey(name: 'job_level_name')
  String? get jobLevelName;
  @override
  @JsonKey(name: 'department_name')
  String? get departmentName;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'photo_profile_url')
  String? get photoProfileUrl;
  @override
  @JsonKey(name: 'submitted_on')
  String? get submittedOn;
  @override
  @JsonKey(name: 'validated_on')
  String? get validatedOn;

  /// Create a copy of TeamMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamMemberImplCopyWith<_$TeamMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssessmentList _$AssessmentListFromJson(Map<String, dynamic> json) {
  return _AssessmentList.fromJson(json);
}

/// @nodoc
mixin _$AssessmentList {
  int? get id => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_member')
  List<TeamMember>? get teamMember => throw _privateConstructorUsedError;

  /// Serializes this AssessmentList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssessmentList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssessmentListCopyWith<AssessmentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentListCopyWith<$Res> {
  factory $AssessmentListCopyWith(
          AssessmentList value, $Res Function(AssessmentList) then) =
      _$AssessmentListCopyWithImpl<$Res, AssessmentList>;
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? status,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'team_member') List<TeamMember>? teamMember});
}

/// @nodoc
class _$AssessmentListCopyWithImpl<$Res, $Val extends AssessmentList>
    implements $AssessmentListCopyWith<$Res> {
  _$AssessmentListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssessmentList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? teamMember = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMember: freezed == teamMember
          ? _value.teamMember
          : teamMember // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentListImplCopyWith<$Res>
    implements $AssessmentListCopyWith<$Res> {
  factory _$$AssessmentListImplCopyWith(_$AssessmentListImpl value,
          $Res Function(_$AssessmentListImpl) then) =
      __$$AssessmentListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? period,
      String? status,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'team_member') List<TeamMember>? teamMember});
}

/// @nodoc
class __$$AssessmentListImplCopyWithImpl<$Res>
    extends _$AssessmentListCopyWithImpl<$Res, _$AssessmentListImpl>
    implements _$$AssessmentListImplCopyWith<$Res> {
  __$$AssessmentListImplCopyWithImpl(
      _$AssessmentListImpl _value, $Res Function(_$AssessmentListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssessmentList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? period = freezed,
    Object? status = freezed,
    Object? dueDate = freezed,
    Object? teamMember = freezed,
  }) {
    return _then(_$AssessmentListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMember: freezed == teamMember
          ? _value._teamMember
          : teamMember // ignore: cast_nullable_to_non_nullable
              as List<TeamMember>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentListImpl implements _AssessmentList {
  const _$AssessmentListImpl(
      {this.id,
      this.period,
      this.status,
      @JsonKey(name: 'due_date') this.dueDate,
      @JsonKey(name: 'team_member') final List<TeamMember>? teamMember})
      : _teamMember = teamMember;

  factory _$AssessmentListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentListImplFromJson(json);

  @override
  final int? id;
  @override
  final String? period;
  @override
  final String? status;
  @override
  @JsonKey(name: 'due_date')
  final String? dueDate;
  final List<TeamMember>? _teamMember;
  @override
  @JsonKey(name: 'team_member')
  List<TeamMember>? get teamMember {
    final value = _teamMember;
    if (value == null) return null;
    if (_teamMember is EqualUnmodifiableListView) return _teamMember;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssessmentList(id: $id, period: $period, status: $status, dueDate: $dueDate, teamMember: $teamMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            const DeepCollectionEquality()
                .equals(other._teamMember, _teamMember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, period, status, dueDate,
      const DeepCollectionEquality().hash(_teamMember));

  /// Create a copy of AssessmentList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentListImplCopyWith<_$AssessmentListImpl> get copyWith =>
      __$$AssessmentListImplCopyWithImpl<_$AssessmentListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentListImplToJson(
      this,
    );
  }
}

abstract class _AssessmentList implements AssessmentList {
  const factory _AssessmentList(
          {final int? id,
          final String? period,
          final String? status,
          @JsonKey(name: 'due_date') final String? dueDate,
          @JsonKey(name: 'team_member') final List<TeamMember>? teamMember}) =
      _$AssessmentListImpl;

  factory _AssessmentList.fromJson(Map<String, dynamic> json) =
      _$AssessmentListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get period;
  @override
  String? get status;
  @override
  @JsonKey(name: 'due_date')
  String? get dueDate;
  @override
  @JsonKey(name: 'team_member')
  List<TeamMember>? get teamMember;

  /// Create a copy of AssessmentList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssessmentListImplCopyWith<_$AssessmentListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
