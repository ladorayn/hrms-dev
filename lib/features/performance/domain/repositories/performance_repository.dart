import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';

abstract class PerformanceRepository {
  Future<List<FormFields>> getFormFields({required int formId});

  Future<List<AssessmentList>> getAssessmentList();
}
