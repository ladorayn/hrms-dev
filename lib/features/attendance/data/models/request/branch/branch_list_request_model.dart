import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_list_request_model.freezed.dart';
part 'branch_list_request_model.g.dart';

@freezed
class BranchListRequestModel with _$BranchListRequestModel {
  const factory BranchListRequestModel({
    @Default('created_at') @JsonKey(name: 'order_by') String orderBy,
    @Default('desc') @JsonKey(name: 'order_direction') String orderDirection,
    @Default('') String page,
    @Default('') @JsonKey(name: 'per_page') String perPage,
    @Default('') String search,
  }) = _BranchListRequestModel;

  factory BranchListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BranchListRequestModelFromJson(json);
}
