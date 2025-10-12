import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_location_response_model.freezed.dart';
part 'validate_location_response_model.g.dart';

@freezed
class ValidateLocationResponseModel with _$ValidateLocationResponseModel {
  const factory ValidateLocationResponseModel({
    @JsonKey(name: 'is_valid') bool? isValid,
    double? distance,
    @JsonKey(name: 'max_radius') int? maxRadius,
  }) = _ValidateLocationResponseModel;

  factory ValidateLocationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ValidateLocationResponseModelFromJson(json);
}
