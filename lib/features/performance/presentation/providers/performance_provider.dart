import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/performance/data/data_sources/performance_remote_source.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/repositories/performance_repository_impl.dart';
import 'package:hrms_mobile/features/performance/domain/usecases/performance_usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'performance_provider.g.dart';

final performanceRemoteSourceProvider =
    Provider<PerformanceRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return PerformanceRemoteSource(dio);
});

final performanceRepoProvider = Provider<PerformanceRepositoryImpl>((ref) {
  final remoteSource = ref.watch(performanceRemoteSourceProvider);
  return PerformanceRepositoryImpl(remoteSource: remoteSource);
});

final performanceUseCaseProvider =
    Provider((ref) => PerformanceUsecases(ref.watch(performanceRepoProvider)));

@riverpod
class PerformanceFormFields extends _$PerformanceFormFields {
  @override
  Future<List<FormFields>> build({required int formId}) async {
    final usecase = ref.watch(performanceUseCaseProvider);
    return await usecase.getFormFields(formId: formId);
  }
}

@riverpod
class PerformanceFormFieldsByGroup extends _$PerformanceFormFieldsByGroup {
  @override
  Future<List<FormFieldsGroup>> build({required int formId}) async {
    final usecase = ref.watch(performanceUseCaseProvider);
    return await usecase.getFormFieldsByGroup(formId: formId);
  }
}

@riverpod
class PerformanceAssessmentAnswer extends _$PerformanceAssessmentAnswer {
  @override
  Future<List<AssessmentAnswer>> build(
      {AssessmentAnswerRequest? request}) async {
    final usecase = ref.watch(performanceUseCaseProvider);
    return await usecase.getAssessmentAnswer(request: request);
  }
}

@riverpod
class AssessmentFormSubmission extends _$AssessmentFormSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required AssessmentFormRequest request,
    required assessmentId,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(performanceUseCaseProvider);

    try {
      final response = await usecase.assessmentFormSubmission(
          request: request, assessmentId: assessmentId);
      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

@riverpod
class AssessmentFormValidateSubmission
    extends _$AssessmentFormValidateSubmission {
  @override
  AsyncValue<dynamic> build() => const AsyncData(null);

  Future<void> submitForm({
    required AssessmentFormValidateRequest request,
    required assessmentId,
  }) async {
    state = const AsyncLoading();
    final usecase = ref.watch(performanceUseCaseProvider);

    try {
      final response = await usecase.assessmentFormValidateSubmission(
          request: request, assessmentId: assessmentId);
      state = AsyncData(response);
    } catch (e, s) {
      state = AsyncError(e, s);
      rethrow;
    }
  }

  void reset() {
    state = const AsyncData(null);
  }
}

@riverpod
class AssessmentListR extends _$AssessmentListR {
  @override
  Future<List<AssessmentList>> build() async {
    final usecase = ref.watch(performanceUseCaseProvider);
    return await usecase.getAssessmentList();
  }
}
