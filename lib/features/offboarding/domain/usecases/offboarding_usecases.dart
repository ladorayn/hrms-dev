import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_item_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';

class OffboardingUsecases {
  final OffboardingRepository repository;

  OffboardingUsecases(this.repository);

  Future<OffboardingStatusResponse?> checkStatus() {
    return repository.offboardingStatus();
  }

  Future<List<OffboardingProgress>> checkProgress({dynamic id}) {
    return repository.offboardingProgress(id: id);
  }

  Future<List<HandoverItems>> getHandoverItems(
      {required HandoverCategoryItemRequest request}) async {
    return repository.getHandoverItems(request: request);
  }

  Future<List<FormFields>> getFormFields({required int formId}) {
    return repository.offboardingFormFields(formId: formId);
  }

  Future<dynamic> submitExitForm(
      {required ExitFormRequest request,
      required int formId,
      required int offboardingId}) {
    return repository.exitFormSubmission(
        request: request, formId: formId, offboardingId: offboardingId);
  }

  Future<dynamic> submitHandover(
      {required HandoverRequest request, required int offboardingId}) {
    return repository.submitHandover(
        request: request, offboardingId: offboardingId);
  }

  Future<dynamic> validateHandover({
    required HandoverValidateRequest request,
    required String offboardingId,
  }) {
    return repository.validateHandover(
        request: request, offboardingId: offboardingId);
  }

  Future<List<HandoverItem>> getHandover({
    required String offboardingId,
    required String category,
    required String userId,
  }) {
    return repository.getHandover(
        offboardingId: offboardingId, category: category, userId: userId);
  }
}
