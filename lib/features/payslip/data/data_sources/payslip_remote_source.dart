import 'package:dio/dio.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/data/models/base_response.dart';
import 'package:hrms_mobile/core/errors/error_handler.dart';
import 'package:hrms_mobile/features/payslip/data/models/request/payslip_view_request.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_list_response.dart';
import 'package:hrms_mobile/features/payslip/data/models/response/payslip_request_view_response.dart';

class PayslipRemoteSource {
  final Dio _dio;

  PayslipRemoteSource(this._dio);

  Future<BasePaginatedResponse<PayslipDataList>> getPayslipList() async {
    try {
      final response = await _dio.get(
        'api/ess/payslip',
      );

      return BasePaginatedResponse.fromJson(
        response.data,
        (json) => PayslipDataList.fromJson(json as Map<String, dynamic>),
        emptyT: () => List.empty(),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<PayslipDetailResponse>> getPayslipDetail(
      {required int id}) async {
    try {
      final response = await _dio.get(
        'api/ess/payslip/$id',
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => PayslipDetailResponse.fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<dynamic>> requestViewPayslip(
      {required PayslipRequest request, required int id}) async {
    try {
      final response = await _dio.post(
        'api/ess/payslip/$id/request-view',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<BaseResponse<dynamic>> requestPrintPayslip(
      {required PayslipRequest request, required int id}) async {
    try {
      final response = await _dio.post(
        'api/ess/payslip/$id/request-print',
        data: request,
      );

      return BaseResponse.fromJson(
        response.data,
        (json) => json,
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
