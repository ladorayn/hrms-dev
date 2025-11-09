import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';

abstract class OffboardingRepository {
  Future<OffboardingStatusResponse> offboardingStatus();

  Future<List<FormFields>> offboardingFormFields({required int formId});

  Future<dynamic> exitFormSubmission({
    required ExitFormRequest request,
    required int formId,
    required int offboardingId,
  });

  Future<dynamic> submitHandover(
      {required HandoverRequest request, required int offboardingId});
}
