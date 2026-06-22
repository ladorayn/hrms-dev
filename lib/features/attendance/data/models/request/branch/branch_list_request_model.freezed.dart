// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_list_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchListRequestModel _$BranchListRequestModelFromJson(
    Map<String, dynamic> json) {
  return _BranchListRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BranchListRequestModel {
  @JsonKey(name: 'order_by')
  String get orderBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_direction')
  String get orderDirection => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  String get perPage => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;

  /// Serializes this BranchListRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchListRequestModelCopyWith<BranchListRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchListRequestModelCopyWith<$Res> {
  factory $BranchListRequestModelCopyWith(BranchListRequestModel value,
          $Res Function(BranchListRequestModel) then) =
      _$BranchListRequestModelCopyWithImpl<$Res, BranchListRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_by') String orderBy,
      @JsonKey(name: 'order_direction') String orderDirection,
      String page,
      @JsonKey(name: 'per_page') String perPage,
      String search});
}

/// @nodoc
class _$BranchListRequestModelCopyWithImpl<$Res,
        $Val extends BranchListRequestModel>
    implements $BranchListRequestModelCopyWith<$Res> {
  _$BranchListRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? orderDirection = null,
    Object? page = null,
    Object? perPage = null,
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      orderDirection: null == orderDirection
          ? _value.orderDirection
          : orderDirection // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchListRequestModelImplCopyWith<$Res>
    implements $BranchListRequestModelCopyWith<$Res> {
  factory _$$BranchListRequestModelImplCopyWith(
          _$BranchListRequestModelImpl value,
          $Res Function(_$BranchListRequestModelImpl) then) =
      __$$BranchListRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_by') String orderBy,
      @JsonKey(name: 'order_direction') String orderDirection,
      String page,
      @JsonKey(name: 'per_page') String perPage,
      String search});
}

/// @nodoc
class __$$BranchListRequestModelImplCopyWithImpl<$Res>
    extends _$BranchListRequestModelCopyWithImpl<$Res,
        _$BranchListRequestModelImpl>
    implements _$$BranchListRequestModelImplCopyWith<$Res> {
  __$$BranchListRequestModelImplCopyWithImpl(
      _$BranchListRequestModelImpl _value,
      $Res Function(_$BranchListRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? orderDirection = null,
    Object? page = null,
    Object? perPage = null,
    Object? search = null,
  }) {
    return _then(_$BranchListRequestModelImpl(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      orderDirection: null == orderDirection
          ? _value.orderDirection
          : orderDirection // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as String,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchListRequestModelImpl implements _BranchListRequestModel {
  const _$BranchListRequestModelImpl(
      {@JsonKey(name: 'order_by') this.orderBy = 'created_at',
      @JsonKey(name: 'order_direction') this.orderDirection = 'desc',
      this.page = '',
      @JsonKey(name: 'per_page') this.perPage = '',
      this.search = ''});

  factory _$BranchListRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchListRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'order_by')
  final String orderBy;
  @override
  @JsonKey(name: 'order_direction')
  final String orderDirection;
  @override
  @JsonKey()
  final String page;
  @override
  @JsonKey(name: 'per_page')
  final String perPage;
  @override
  @JsonKey()
  final String search;

  @override
  String toString() {
    return 'BranchListRequestModel(orderBy: $orderBy, orderDirection: $orderDirection, page: $page, perPage: $perPage, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchListRequestModelImpl &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.orderDirection, orderDirection) ||
                other.orderDirection == orderDirection) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderBy, orderDirection, page, perPage, search);

  /// Create a copy of BranchListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchListRequestModelImplCopyWith<_$BranchListRequestModelImpl>
      get copyWith => __$$BranchListRequestModelImplCopyWithImpl<
          _$BranchListRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchListRequestModelImplToJson(
      this,
    );
  }
}

abstract class _BranchListRequestModel implements BranchListRequestModel {
  const factory _BranchListRequestModel(
      {@JsonKey(name: 'order_by') final String orderBy,
      @JsonKey(name: 'order_direction') final String orderDirection,
      final String page,
      @JsonKey(name: 'per_page') final String perPage,
      final String search}) = _$BranchListRequestModelImpl;

  factory _BranchListRequestModel.fromJson(Map<String, dynamic> json) =
      _$BranchListRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'order_by')
  String get orderBy;
  @override
  @JsonKey(name: 'order_direction')
  String get orderDirection;
  @override
  String get page;
  @override
  @JsonKey(name: 'per_page')
  String get perPage;
  @override
  String get search;

  /// Create a copy of BranchListRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchListRequestModelImplCopyWith<_$BranchListRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
