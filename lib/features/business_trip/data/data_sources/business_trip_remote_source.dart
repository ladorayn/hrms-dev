import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/business_trip/data/models/request/business_trip_request.dart';
import 'package:hrms_mobile/features/business_trip/data/models/response/business_trip_response.dart';

class BusinessTripRemoteSource {
  final Dio _dio;

  BusinessTripRemoteSource(this._dio);

  Future<BaseResponse<List<BusinessTripData>>> getBusinessTrips() async {
    try {
      final response = await _dio.get('api/ess/business-trips');
      return BaseResponse.fromJson(
        response.data,
        (json) => (json as List)
            .map((i) => BusinessTripData.fromJson(i as Map<String, dynamic>))
            .toList(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<BusinessTripData>> getBusinessTripDetail(int id) async {
    try {
      final response = await _dio.get('api/ess/business-trips/$id');
      return BaseResponse.fromJson(
        response.data,
        (json) => BusinessTripData.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse> createBusinessTrip(BusinessTripRequest request) async {
    try {
      final response = await _dio.post('api/ess/business-trips', data: request.toJson());
      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse> cancelBusinessTrip(int id) async {
    try {
      final response = await _dio.delete('api/ess/business-trips/$id');
      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
