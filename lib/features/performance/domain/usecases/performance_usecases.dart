import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';

class PerformanceUsecases {
  final PerformanceRepository repository;

  PerformanceUsecases(this.repository);

  Future<List<FormFields>> getFormFields({required int formId}) {
    return repository.getFormFields(formId: formId);
  }

  Future<List<AssessmentList>> getAssessmentList() {
    return repository.getAssessmentList();
  }
}
