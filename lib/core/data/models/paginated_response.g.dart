// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResponseImpl<T> _$$PaginatedResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginatedResponseImpl<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      currentPage: (json['current_page'] as num?)?.toInt(),
      currentPageUrl: json['current_page_url'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
      lastPageUrl: json['last_page_url'] as String?,
      firstPageUrl: json['first_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      prevPageUrl: json['prev_page_url'] as String?,
    );

Map<String, dynamic> _$$PaginatedResponseImplToJson<T>(
  _$PaginatedResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'current_page': instance.currentPage,
      'current_page_url': instance.currentPageUrl,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
      'last_page_url': instance.lastPageUrl,
      'first_page_url': instance.firstPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'prev_page_url': instance.prevPageUrl,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
