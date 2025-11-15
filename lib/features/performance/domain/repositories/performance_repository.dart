import 'package:hrms_mobile/core/data/models/form_fields_response.dart';

abstract class PerformanceRepository {
  Future<List<FormFields>> getFormFields({required int formId});
}
