// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this MetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "per_page") int perPage,
      int total,
      int? from,
      int? to,
      String path});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaModelImplCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$$MetaModelImplCopyWith(
          _$MetaModelImpl value, $Res Function(_$MetaModelImpl) then) =
      __$$MetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int currentPage,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "per_page") int perPage,
      int total,
      int? from,
      int? to,
      String path});
}

/// @nodoc
class __$$MetaModelImplCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$MetaModelImpl>
    implements _$$MetaModelImplCopyWith<$Res> {
  __$$MetaModelImplCopyWithImpl(
      _$MetaModelImpl _value, $Res Function(_$MetaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
    Object? from = freezed,
    Object? to = freezed,
    Object? path = null,
  }) {
    return _then(_$MetaModelImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaModelImpl implements _MetaModel {
  const _$MetaModelImpl(
      {@JsonKey(name: "current_page") required this.currentPage,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "per_page") required this.perPage,
      required this.total,
      this.from,
      this.to,
      required this.path});

  factory _$MetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaModelImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int currentPage;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  final int total;
  @override
  final int? from;
  @override
  final int? to;
  @override
  final String path;

  @override
  String toString() {
    return 'MetaModel(currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, total: $total, from: $from, to: $to, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaModelImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, lastPage, perPage, total, from, to, path);

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      __$$MetaModelImplCopyWithImpl<_$MetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaModelImplToJson(
      this,
    );
  }
}

abstract class _MetaModel implements MetaModel {
  const factory _MetaModel(
      {@JsonKey(name: "current_page") required final int currentPage,
      @JsonKey(name: "last_page") required final int lastPage,
      @JsonKey(name: "per_page") required final int perPage,
      required final int total,
      final int? from,
      final int? to,
      required final String path}) = _$MetaModelImpl;

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$MetaModelImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  int get total;
  @override
  int? get from;
  @override
  int? get to;
  @override
  String get path;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) {
  return _LinksModel.fromJson(json);
}

/// @nodoc
mixin _$LinksModel {
  String? get first => throw _privateConstructorUsedError;
  String? get last => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  /// Serializes this LinksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinksModelCopyWith<LinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksModelCopyWith<$Res> {
  factory $LinksModelCopyWith(
          LinksModel value, $Res Function(LinksModel) then) =
      _$LinksModelCopyWithImpl<$Res, LinksModel>;
  @useResult
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class _$LinksModelCopyWithImpl<$Res, $Val extends LinksModel>
    implements $LinksModelCopyWith<$Res> {
  _$LinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksModelImplCopyWith<$Res>
    implements $LinksModelCopyWith<$Res> {
  factory _$$LinksModelImplCopyWith(
          _$LinksModelImpl value, $Res Function(_$LinksModelImpl) then) =
      __$$LinksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class __$$LinksModelImplCopyWithImpl<$Res>
    extends _$LinksModelCopyWithImpl<$Res, _$LinksModelImpl>
    implements _$$LinksModelImplCopyWith<$Res> {
  __$$LinksModelImplCopyWithImpl(
      _$LinksModelImpl _value, $Res Function(_$LinksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$LinksModelImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksModelImpl implements _LinksModel {
  const _$LinksModelImpl({this.first, this.last, this.prev, this.next});

  factory _$LinksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksModelImplFromJson(json);

  @override
  final String? first;
  @override
  final String? last;
  @override
  final String? prev;
  @override
  final String? next;

  @override
  String toString() {
    return 'LinksModel(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksModelImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  /// Create a copy of LinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksModelImplCopyWith<_$LinksModelImpl> get copyWith =>
      __$$LinksModelImplCopyWithImpl<_$LinksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksModelImplToJson(
      this,
    );
  }
}

abstract class _LinksModel implements LinksModel {
  const factory _LinksModel(
      {final String? first,
      final String? last,
      final String? prev,
      final String? next}) = _$LinksModelImpl;

  factory _LinksModel.fromJson(Map<String, dynamic> json) =
      _$LinksModelImpl.fromJson;

  @override
  String? get first;
  @override
  String? get last;
  @override
  String? get prev;
  @override
  String? get next;

  /// Create a copy of LinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinksModelImplCopyWith<_$LinksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasePaginatedResponse<T> {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  LinksModel? get links => throw _privateConstructorUsedError;
  MetaModel? get meta => throw _privateConstructorUsedError;

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasePaginatedResponseCopyWith<T, BasePaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePaginatedResponseCopyWith<T, $Res> {
  factory $BasePaginatedResponseCopyWith(BasePaginatedResponse<T> value,
          $Res Function(BasePaginatedResponse<T>) then) =
      _$BasePaginatedResponseCopyWithImpl<T, $Res, BasePaginatedResponse<T>>;
  @useResult
  $Res call(
      {int code,
      String message,
      List<T> data,
      LinksModel? links,
      MetaModel? meta});

  $LinksModelCopyWith<$Res>? get links;
  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BasePaginatedResponseCopyWithImpl<T, $Res,
        $Val extends BasePaginatedResponse<T>>
    implements $BasePaginatedResponseCopyWith<T, $Res> {
  _$BasePaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
    ) as $Val);
  }

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinksModelCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksModelCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasePaginatedResponseImplCopyWith<T, $Res>
    implements $BasePaginatedResponseCopyWith<T, $Res> {
  factory _$$BasePaginatedResponseImplCopyWith(
          _$BasePaginatedResponseImpl<T> value,
          $Res Function(_$BasePaginatedResponseImpl<T>) then) =
      __$$BasePaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      List<T> data,
      LinksModel? links,
      MetaModel? meta});

  @override
  $LinksModelCopyWith<$Res>? get links;
  @override
  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$BasePaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$BasePaginatedResponseCopyWithImpl<T, $Res,
        _$BasePaginatedResponseImpl<T>>
    implements _$$BasePaginatedResponseImplCopyWith<T, $Res> {
  __$$BasePaginatedResponseImplCopyWithImpl(
      _$BasePaginatedResponseImpl<T> _value,
      $Res Function(_$BasePaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? links = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$BasePaginatedResponseImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksModel?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
    ));
  }
}

/// @nodoc

class _$BasePaginatedResponseImpl<T> implements _BasePaginatedResponse<T> {
  const _$BasePaginatedResponseImpl(
      {required this.code,
      required this.message,
      required final List<T> data,
      this.links,
      this.meta})
      : _data = data;

  @override
  final int code;
  @override
  final String message;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final LinksModel? links;
  @override
  final MetaModel? meta;

  @override
  String toString() {
    return 'BasePaginatedResponse<$T>(code: $code, message: $message, data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasePaginatedResponseImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message,
      const DeepCollectionEquality().hash(_data), links, meta);

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePaginatedResponseImplCopyWith<T, _$BasePaginatedResponseImpl<T>>
      get copyWith => __$$BasePaginatedResponseImplCopyWithImpl<T,
          _$BasePaginatedResponseImpl<T>>(this, _$identity);
}

abstract class _BasePaginatedResponse<T> implements BasePaginatedResponse<T> {
  const factory _BasePaginatedResponse(
      {required final int code,
      required final String message,
      required final List<T> data,
      final LinksModel? links,
      final MetaModel? meta}) = _$BasePaginatedResponseImpl<T>;

  @override
  int get code;
  @override
  String get message;
  @override
  List<T> get data;
  @override
  LinksModel? get links;
  @override
  MetaModel? get meta;

  /// Create a copy of BasePaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasePaginatedResponseImplCopyWith<T, _$BasePaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
