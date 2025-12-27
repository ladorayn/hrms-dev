import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/offboarding/data/data_sources/offboarding_remote_source.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';

class OffboardingRepositoryImpl implements OffboardingRepository {
  final OffboardingRemoteSource remoteSource;

  OffboardingRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<OffboardingStatusResponse> offboardingStatus() async {
    final response = await remoteSource.offboardingStatus();

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<FormFields>> offboardingFormFields({required int formId}) async {
    final response = await remoteSource.offboardingFormFields(formId: formId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<dynamic> exitFormSubmission(
      {required ExitFormRequest request,
      required int formId,
      required int offboardingId}) async {
    final response = await remoteSource.exitFormSubmission(
        request: request, formId: formId, offboardingId: offboardingId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future submitHandover(
      {required HandoverRequest request, required int offboardingId}) async {
    final response = await remoteSource.submitHandover(
        request: request, offboardingId: offboardingId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future<List<HandoverItem>> getHandover(
      {required String offboardingId,
      required String category,
      required String userId}) async {
    final response = await remoteSource.getHandover(
        offboardingId: offboardingId, category: category, userId: userId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }

  @override
  Future validateHandover({
    required HandoverValidateRequest request,
    required String offboardingId,
  }) async {
    final response = await remoteSource.validateHandover(
        request: request, offboardingId: offboardingId);

    if (response.status == 'success') {
      return response.data;
    } else {
      throw Exception('API Error: ${response.message}');
    }
  }
}
