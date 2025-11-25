// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedResponse<T> _$PaginatedResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedResponse<T> {
  List<T> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page_url')
  String? get currentPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'first')
  String? get first => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev')
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;

  /// Serializes this PaginatedResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedResponseCopyWith<T, PaginatedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseCopyWith<T, $Res> {
  factory $PaginatedResponseCopyWith(PaginatedResponse<T> value,
          $Res Function(PaginatedResponse<T>) then) =
      _$PaginatedResponseCopyWithImpl<T, $Res, PaginatedResponse<T>>;
  @useResult
  $Res call(
      {List<T> data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'current_page_url') String? currentPageUrl,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      int? from,
      int? to,
      @JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class _$PaginatedResponseCopyWithImpl<T, $Res,
        $Val extends PaginatedResponse<T>>
    implements $PaginatedResponseCopyWith<T, $Res> {
  _$PaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = freezed,
    Object? currentPageUrl = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? lastPageUrl = freezed,
    Object? firstPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPageUrl: freezed == currentPageUrl
          ? _value.currentPageUrl
          : currentPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
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
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResponseImplCopyWith<T, $Res>
    implements $PaginatedResponseCopyWith<T, $Res> {
  factory _$$PaginatedResponseImplCopyWith(_$PaginatedResponseImpl<T> value,
          $Res Function(_$PaginatedResponseImpl<T>) then) =
      __$$PaginatedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'current_page_url') String? currentPageUrl,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      int? from,
      int? to,
      @JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class __$$PaginatedResponseImplCopyWithImpl<T, $Res>
    extends _$PaginatedResponseCopyWithImpl<T, $Res, _$PaginatedResponseImpl<T>>
    implements _$$PaginatedResponseImplCopyWith<T, $Res> {
  __$$PaginatedResponseImplCopyWithImpl(_$PaginatedResponseImpl<T> _value,
      $Res Function(_$PaginatedResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? currentPage = freezed,
    Object? currentPageUrl = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? lastPageUrl = freezed,
    Object? firstPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_$PaginatedResponseImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPageUrl: freezed == currentPageUrl
          ? _value.currentPageUrl
          : currentPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
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
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginatedResponseImpl<T> implements _PaginatedResponse<T> {
  const _$PaginatedResponseImpl(
      {required final List<T> data,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'current_page_url') this.currentPageUrl,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'last_page') this.lastPage,
      this.from,
      this.to,
      @JsonKey(name: 'first') this.first,
      @JsonKey(name: 'last') this.last,
      @JsonKey(name: 'prev') this.prev,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl})
      : _data = data;

  factory _$PaginatedResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginatedResponseImplFromJson(json, fromJsonT);

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'current_page_url')
  final String? currentPageUrl;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  final int? from;
  @override
  final int? to;
  @override
  @JsonKey(name: 'first')
  final String? first;
  @override
  @JsonKey(name: 'last')
  final String? last;
  @override
  @JsonKey(name: 'prev')
  final String? prev;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  @override
  String toString() {
    return 'PaginatedResponse<$T>(data: $data, currentPage: $currentPage, currentPageUrl: $currentPageUrl, perPage: $perPage, total: $total, lastPage: $lastPage, from: $from, to: $to, first: $first, last: $last, prev: $prev, next: $next, lastPageUrl: $lastPageUrl, firstPageUrl: $firstPageUrl, nextPageUrl: $nextPageUrl, path: $path, prevPageUrl: $prevPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentPageUrl, currentPageUrl) ||
                other.currentPageUrl == currentPageUrl) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      currentPageUrl,
      perPage,
      total,
      lastPage,
      from,
      to,
      first,
      last,
      prev,
      next,
      lastPageUrl,
      firstPageUrl,
      nextPageUrl,
      path,
      prevPageUrl);

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith =>
          __$$PaginatedResponseImplCopyWithImpl<T, _$PaginatedResponseImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginatedResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedResponse<T> implements PaginatedResponse<T> {
  const factory _PaginatedResponse(
          {required final List<T> data,
          @JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'current_page_url') final String? currentPageUrl,
          @JsonKey(name: 'per_page') final int? perPage,
          final int? total,
          @JsonKey(name: 'last_page') final int? lastPage,
          final int? from,
          final int? to,
          @JsonKey(name: 'first') final String? first,
          @JsonKey(name: 'last') final String? last,
          @JsonKey(name: 'prev') final String? prev,
          @JsonKey(name: 'next') final String? next,
          @JsonKey(name: 'last_page_url') final String? lastPageUrl,
          @JsonKey(name: 'first_page_url') final String? firstPageUrl,
          @JsonKey(name: 'next_page_url') final String? nextPageUrl,
          final String? path,
          @JsonKey(name: 'prev_page_url') final String? prevPageUrl}) =
      _$PaginatedResponseImpl<T>;

  factory _PaginatedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginatedResponseImpl<T>.fromJson;

  @override
  List<T> get data;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'current_page_url')
  String? get currentPageUrl;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  int? get from;
  @override
  int? get to;
  @override
  @JsonKey(name: 'first')
  String? get first;
  @override
  @JsonKey(name: 'last')
  String? get last;
  @override
  @JsonKey(name: 'prev')
  String? get prev;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;

  /// Create a copy of PaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedResponseImplCopyWith<T, _$PaginatedResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl({this.url, this.label, this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url,
      final String? label,
      final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page_url')
  String? get currentPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'first')
  String? get first => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  String? get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev')
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'current_page_url') String? currentPageUrl,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      int? from,
      int? to,
      @JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? currentPageUrl = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? lastPageUrl = freezed,
    Object? firstPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPageUrl: freezed == currentPageUrl
          ? _value.currentPageUrl
          : currentPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
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
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'current_page_url') String? currentPageUrl,
      @JsonKey(name: 'per_page') int? perPage,
      int? total,
      @JsonKey(name: 'last_page') int? lastPage,
      int? from,
      int? to,
      @JsonKey(name: 'first') String? first,
      @JsonKey(name: 'last') String? last,
      @JsonKey(name: 'prev') String? prev,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'last_page_url') String? lastPageUrl,
      @JsonKey(name: 'first_page_url') String? firstPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String? path,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? currentPageUrl = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? lastPage = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
    Object? lastPageUrl = freezed,
    Object? firstPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_$PaginationImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPageUrl: freezed == currentPageUrl
          ? _value.currentPageUrl
          : currentPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
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
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {@JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'current_page_url') this.currentPageUrl,
      @JsonKey(name: 'per_page') this.perPage,
      this.total,
      @JsonKey(name: 'last_page') this.lastPage,
      this.from,
      this.to,
      @JsonKey(name: 'first') this.first,
      @JsonKey(name: 'last') this.last,
      @JsonKey(name: 'prev') this.prev,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'last_page_url') this.lastPageUrl,
      @JsonKey(name: 'first_page_url') this.firstPageUrl,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      this.path,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'current_page_url')
  final String? currentPageUrl;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? total;
  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  final int? from;
  @override
  final int? to;
  @override
  @JsonKey(name: 'first')
  final String? first;
  @override
  @JsonKey(name: 'last')
  final String? last;
  @override
  @JsonKey(name: 'prev')
  final String? prev;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  @override
  String toString() {
    return 'Pagination(currentPage: $currentPage, currentPageUrl: $currentPageUrl, perPage: $perPage, total: $total, lastPage: $lastPage, from: $from, to: $to, first: $first, last: $last, prev: $prev, next: $next, lastPageUrl: $lastPageUrl, firstPageUrl: $firstPageUrl, nextPageUrl: $nextPageUrl, path: $path, prevPageUrl: $prevPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentPageUrl, currentPageUrl) ||
                other.currentPageUrl == currentPageUrl) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      currentPageUrl,
      perPage,
      total,
      lastPage,
      from,
      to,
      first,
      last,
      prev,
      next,
      lastPageUrl,
      firstPageUrl,
      nextPageUrl,
      path,
      prevPageUrl);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
          {@JsonKey(name: 'current_page') final int? currentPage,
          @JsonKey(name: 'current_page_url') final String? currentPageUrl,
          @JsonKey(name: 'per_page') final int? perPage,
          final int? total,
          @JsonKey(name: 'last_page') final int? lastPage,
          final int? from,
          final int? to,
          @JsonKey(name: 'first') final String? first,
          @JsonKey(name: 'last') final String? last,
          @JsonKey(name: 'prev') final String? prev,
          @JsonKey(name: 'next') final String? next,
          @JsonKey(name: 'last_page_url') final String? lastPageUrl,
          @JsonKey(name: 'first_page_url') final String? firstPageUrl,
          @JsonKey(name: 'next_page_url') final String? nextPageUrl,
          final String? path,
          @JsonKey(name: 'prev_page_url') final String? prevPageUrl}) =
      _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'current_page_url')
  String? get currentPageUrl;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get total;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  int? get from;
  @override
  int? get to;
  @override
  @JsonKey(name: 'first')
  String? get first;
  @override
  @JsonKey(name: 'last')
  String? get last;
  @override
  @JsonKey(name: 'prev')
  String? get prev;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
