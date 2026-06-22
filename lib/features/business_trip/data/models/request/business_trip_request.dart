import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_trip_request.freezed.dart';
part 'business_trip_request.g.dart';

@freezed
class BusinessTripRequest with _$BusinessTripRequest {
  const factory BusinessTripRequest({
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    required String destination,
    required String reason,
  }) = _BusinessTripRequest;

  factory BusinessTripRequest.fromJson(Map<String, dynamic> json) =>
      _$BusinessTripRequestFromJson(json);
}
