// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_list_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchListRequestModelImpl _$$BranchListRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BranchListRequestModelImpl(
      orderBy: json['order_by'] as String? ?? 'created_at',
      orderDirection: json['order_direction'] as String? ?? 'desc',
      page: json['page'] as String? ?? '',
      perPage: json['per_page'] as String? ?? '',
      search: json['search'] as String? ?? '',
    );

Map<String, dynamic> _$$BranchListRequestModelImplToJson(
        _$BranchListRequestModelImpl instance) =>
    <String, dynamic>{
      'order_by': instance.orderBy,
      'order_direction': instance.orderDirection,
      'page': instance.page,
      'per_page': instance.perPage,
      'search': instance.search,
    };
