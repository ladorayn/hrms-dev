import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_location_request_model.freezed.dart';
part 'validate_location_request_model.g.dart';

@freezed
class ValidateLocationRequestModel with _$ValidateLocationRequestModel {
  const factory ValidateLocationRequestModel({
    required String latitude,
    required String longitude,
    @JsonKey(name: 'branch_id') int? branchId,
  }) = _ValidateLocationRequestModel;

  factory ValidateLocationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateLocationRequestModelFromJson(json);
}
