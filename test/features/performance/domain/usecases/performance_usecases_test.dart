import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_answer_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/assessment_form_request.dart';
import 'package:hrms_mobile/features/performance/data/models/request/tracking_value_request.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_answer.dart';
import 'package:hrms_mobile/features/performance/data/models/response/assessment_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_graph.dart';
import 'package:hrms_mobile/features/performance/data/models/response/okr_list.dart';
import 'package:hrms_mobile/features/performance/data/models/response/supervisor_assessment.dart';
import 'package:hrms_mobile/features/performance/domain/repositories/performance_repository.dart';
import 'package:hrms_mobile/features/performance/domain/usecases/performance_usecases.dart';
import 'package:mocktail/mocktail.dart';

class MockPerformanceRepository extends Mock
    implements PerformanceRepository {}

class FakeAssessmentFormRequest extends Fake
    implements AssessmentFormRequest {}

class FakeAssessmentFormValidateRequest extends Fake
    implements AssessmentFormValidateRequest {}

class FakeAssessmentAnswerRequest extends Fake
    implements AssessmentAnswerRequest {}

class FakeTrackingValueRequest extends Fake implements TrackingValueRequest {}

void main() {
  late MockPerformanceRepository mockRepo;
  late PerformanceUsecases useCase;

  const formField = FormFields(
    id: 1,
    isRequired: true,
    order: 1,
    label: 'Score',
  );

  const formGroup = FormFieldsGroup(
    id: 1,
    name: 'Group A',
    formId: 10,
    order: 1,
    createdAt: '2024-01-01',
    updatedAt: '2024-01-01',
    fields: [formField],
  );

  const formDetail = FormFieldsGroupDetail(
    id: 10,
    name: 'Assessment Form',
    groups: [formGroup],
  );

  const assessmentRequest = AssessmentFormRequest(
    status: 1,
    submissions: [SubmissionForm(fieldId: 1, value: 5)],
  );

  const validateRequest = AssessmentFormValidateRequest(
    submissions: [SubmissionForm(fieldId: 1, value: 5)],
  );

  const answerRequest = AssessmentAnswerRequest(formId: 10);

  const assessmentList = AssessmentList(id: 1, period: '2024-Q1', formId: 10);

  const assessmentAnswer = AssessmentAnswer(id: 1, formId: 10);

  const supervisorAnswer = SupervisorAssessmentAnswer(id: 2, formId: 10);

  const supervisorAssessment = SupervisorAssessment(id: 3, status: 1);

  const supervisorDetail = SupervisorAssessmentDetail(id: 3, status: 1);

  const competencyLevel = CompetencyLevel(id: 7, name: 'Advanced');

  const okrList = OKRList(id: 1, name: 'Company OKR');

  const okrDetail = OKRDetail(id: 1, name: 'Company OKR');

  const okrTracking = OKRTracking(id: 11, title: 'KR 1');

  const trackingRequest = TrackingValueRequest(
    keyResultId: 11,
    trackingPeriodId: 1,
    actualValue: 50,
  );

  const setTrackingValue = SetTrackingValue(id: 20, actualValue: '50');

  const graphData = OKRGraphData(id: 1, name: 'Objective');

  const keyResultGraph = KeyResultGraphDetail(id: 11, name: 'KR 1');

  setUpAll(() {
    registerFallbackValue(FakeAssessmentFormRequest());
    registerFallbackValue(FakeAssessmentFormValidateRequest());
    registerFallbackValue(FakeAssessmentAnswerRequest());
    registerFallbackValue(FakeTrackingValueRequest());
  });

  setUp(() {
    mockRepo = MockPerformanceRepository();
    useCase = PerformanceUsecases(mockRepo);
  });

  group('form fields', () {
    group('getFormFields', () {
      test('forwards formId and returns fields', () async {
        when(
          () => mockRepo.getFormFields(formId: any(named: 'formId')),
        ).thenAnswer((_) async => [formField]);

        final result = await useCase.getFormFields(formId: 10);

        expect(result.first.label, 'Score');
        verify(() => mockRepo.getFormFields(formId: 10)).called(1);
      });

      test('rethrows NetworkException from repository', () async {
        when(
          () => mockRepo.getFormFields(formId: any(named: 'formId')),
        ).thenThrow(NetworkException('offline'));

        await expectLater(
          () => useCase.getFormFields(formId: 10),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getFormFieldsByGroup', () {
      test('forwards formId and returns groups', () async {
        when(
          () => mockRepo.getFormFieldsByGroup(formId: any(named: 'formId')),
        ).thenAnswer((_) async => [formGroup]);

        final result = await useCase.getFormFieldsByGroup(formId: 10);

        expect(result.first.name, 'Group A');
        verify(() => mockRepo.getFormFieldsByGroup(formId: 10)).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.getFormFieldsByGroup(formId: any(named: 'formId')),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.getFormFieldsByGroup(formId: 10),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('getFormDetail', () {
      test('forwards formId and returns detail', () async {
        when(
          () => mockRepo.getFormDetail(formId: any(named: 'formId')),
        ).thenAnswer((_) async => formDetail);

        final result = await useCase.getFormDetail(formId: 10);

        expect(result.name, 'Assessment Form');
        verify(() => mockRepo.getFormDetail(formId: 10)).called(1);
      });

      test('rethrows DataNotFoundException from repository', () async {
        when(
          () => mockRepo.getFormDetail(formId: any(named: 'formId')),
        ).thenThrow(DataNotFoundException('Not found'));

        await expectLater(
          () => useCase.getFormDetail(formId: 99),
          throwsA(isA<DataNotFoundException>()),
        );
      });
    });
  });

  group('assessment submissions', () {
    group('assessmentFormSubmission', () {
      test('forwards request and assessmentId', () async {
        when(
          () => mockRepo.assessmentFormSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenAnswer((_) async => 'ok');

        final result = await useCase.assessmentFormSubmission(
          request: assessmentRequest,
          assessmentId: 1,
        );

        expect(result, 'ok');
        verify(
          () => mockRepo.assessmentFormSubmission(
            request: assessmentRequest,
            assessmentId: 1,
          ),
        ).called(1);
      });

      test('rethrows ValidationException from repository', () async {
        when(
          () => mockRepo.assessmentFormSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenThrow(
          ValidationException('Invalid', {'status': ['required']}),
        );

        await expectLater(
          () => useCase.assessmentFormSubmission(
            request: assessmentRequest,
            assessmentId: 1,
          ),
          throwsA(isA<ValidationException>()),
        );
      });
    });

    group('supervisorAssessmentFormSubmission', () {
      test('forwards request and assessmentId', () async {
        when(
          () => mockRepo.supervisorAssessmentFormSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenAnswer((_) async => 'submitted');

        final result = await useCase.supervisorAssessmentFormSubmission(
          request: assessmentRequest,
          assessmentId: 3,
        );

        expect(result, 'submitted');
        verify(
          () => mockRepo.supervisorAssessmentFormSubmission(
            request: assessmentRequest,
            assessmentId: 3,
          ),
        ).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.supervisorAssessmentFormSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.supervisorAssessmentFormSubmission(
            request: assessmentRequest,
            assessmentId: 3,
          ),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('assessmentFormValidateSubmission', () {
      test('forwards request and assessmentId', () async {
        when(
          () => mockRepo.assessmentFormValidateSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenAnswer((_) async => 'validated');

        final result = await useCase.assessmentFormValidateSubmission(
          request: validateRequest,
          assessmentId: 1,
        );

        expect(result, 'validated');
        verify(
          () => mockRepo.assessmentFormValidateSubmission(
            request: validateRequest,
            assessmentId: 1,
          ),
        ).called(1);
      });

      test('rethrows UnauthorizedException from repository', () async {
        when(
          () => mockRepo.assessmentFormValidateSubmission(
            request: any(named: 'request'),
            assessmentId: any(named: 'assessmentId'),
          ),
        ).thenThrow(UnauthorizedException('Forbidden'));

        await expectLater(
          () => useCase.assessmentFormValidateSubmission(
            request: validateRequest,
            assessmentId: 1,
          ),
          throwsA(isA<UnauthorizedException>()),
        );
      });
    });
  });

  group('assessment lists and answers', () {
    group('getAssessmentList', () {
      test('returns list from repository', () async {
        when(() => mockRepo.getAssessmentList())
            .thenAnswer((_) async => [assessmentList]);

        final result = await useCase.getAssessmentList();

        expect(result.first.period, '2024-Q1');
        verify(() => mockRepo.getAssessmentList()).called(1);
      });

      test('rethrows NetworkException from repository', () async {
        when(() => mockRepo.getAssessmentList())
            .thenThrow(NetworkException('offline'));

        await expectLater(
          () => useCase.getAssessmentList(),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getAssessmentAnswer', () {
      test('forwards request and returns answers', () async {
        when(
          () => mockRepo.getAssessmentAnswer(
            request: any(named: 'request'),
          ),
        ).thenAnswer((_) async => [assessmentAnswer]);

        final result =
            await useCase.getAssessmentAnswer(request: answerRequest);

        expect(result.first.id, 1);
        verify(
          () => mockRepo.getAssessmentAnswer(request: answerRequest),
        ).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.getAssessmentAnswer(
            request: any(named: 'request'),
          ),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.getAssessmentAnswer(request: answerRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('getSupervisorAssessmentAnswer', () {
      test('forwards request and returns answer', () async {
        when(
          () => mockRepo.getSupervisorAssessmentAnswer(
            request: any(named: 'request'),
          ),
        ).thenAnswer((_) async => supervisorAnswer);

        final result = await useCase.getSupervisorAssessmentAnswer(
          request: answerRequest,
        );

        expect(result.id, 2);
        verify(
          () => mockRepo.getSupervisorAssessmentAnswer(
            request: answerRequest,
          ),
        ).called(1);
      });

      test('rethrows DataNotFoundException from repository', () async {
        when(
          () => mockRepo.getSupervisorAssessmentAnswer(
            request: any(named: 'request'),
          ),
        ).thenThrow(DataNotFoundException('Not found'));

        await expectLater(
          () => useCase.getSupervisorAssessmentAnswer(
            request: answerRequest,
          ),
          throwsA(isA<DataNotFoundException>()),
        );
      });
    });
  });

  group('supervisor assessments', () {
    group('getSupervisorAssessments', () {
      test('returns list from repository', () async {
        when(() => mockRepo.getSupervisorAssessments())
            .thenAnswer((_) async => [supervisorAssessment]);

        final result = await useCase.getSupervisorAssessments();

        expect(result.first.id, 3);
        verify(() => mockRepo.getSupervisorAssessments()).called(1);
      });

      test('rethrows NetworkException from repository', () async {
        when(() => mockRepo.getSupervisorAssessments())
            .thenThrow(NetworkException('offline'));

        await expectLater(
          () => useCase.getSupervisorAssessments(),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getSupervisorAssessmentDetail', () {
      test('forwards supervisorAssessmentId', () async {
        when(
          () => mockRepo.getSupervisorAssessmentDetail(
            supervisorAssessmentId: any(named: 'supervisorAssessmentId'),
          ),
        ).thenAnswer((_) async => supervisorDetail);

        final result = await useCase.getSupervisorAssessmentDetail(
          supervisorAssessmentId: 3,
        );

        expect(result.id, 3);
        verify(
          () => mockRepo.getSupervisorAssessmentDetail(
            supervisorAssessmentId: 3,
          ),
        ).called(1);
      });

      test('rethrows DataNotFoundException from repository', () async {
        when(
          () => mockRepo.getSupervisorAssessmentDetail(
            supervisorAssessmentId: any(named: 'supervisorAssessmentId'),
          ),
        ).thenThrow(DataNotFoundException('Not found'));

        await expectLater(
          () => useCase.getSupervisorAssessmentDetail(
            supervisorAssessmentId: 99,
          ),
          throwsA(isA<DataNotFoundException>()),
        );
      });
    });

    group('getPerformanceCompetencyLevels', () {
      test('forwards filters and returns competency level', () async {
        when(
          () => mockRepo.getPerformanceCompetencyLevels(
            competencyId: any(named: 'competencyId'),
            dimension: any(named: 'dimension'),
            level: any(named: 'level'),
          ),
        ).thenAnswer((_) async => competencyLevel);

        final result = await useCase.getPerformanceCompetencyLevels(
          competencyId: '7',
          dimension: 'tech',
          level: 'advanced',
        );

        expect(result.name, 'Advanced');
        verify(
          () => mockRepo.getPerformanceCompetencyLevels(
            competencyId: '7',
            dimension: 'tech',
            level: 'advanced',
          ),
        ).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.getPerformanceCompetencyLevels(
            competencyId: any(named: 'competencyId'),
            dimension: any(named: 'dimension'),
            level: any(named: 'level'),
          ),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.getPerformanceCompetencyLevels(
            competencyId: '7',
          ),
          throwsA(isA<ServerException>()),
        );
      });
    });
  });

  group('okr', () {
    group('getOKRList', () {
      test('returns list from repository', () async {
        when(() => mockRepo.getOKRList())
            .thenAnswer((_) async => [okrList]);

        final result = await useCase.getOKRList();

        expect(result.first.name, 'Company OKR');
        verify(() => mockRepo.getOKRList()).called(1);
      });

      test('rethrows NetworkException from repository', () async {
        when(() => mockRepo.getOKRList())
            .thenThrow(NetworkException('offline'));

        await expectLater(
          () => useCase.getOKRList(),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getOKRDetail', () {
      test('forwards okrId and returns detail', () async {
        when(
          () => mockRepo.getOKRDetail(okrId: any(named: 'okrId')),
        ).thenAnswer((_) async => okrDetail);

        final result = await useCase.getOKRDetail(okrId: 1);

        expect(result.id, 1);
        verify(() => mockRepo.getOKRDetail(okrId: 1)).called(1);
      });

      test('rethrows DataNotFoundException from repository', () async {
        when(
          () => mockRepo.getOKRDetail(okrId: any(named: 'okrId')),
        ).thenThrow(DataNotFoundException('Not found'));

        await expectLater(
          () => useCase.getOKRDetail(okrId: 99),
          throwsA(isA<DataNotFoundException>()),
        );
      });
    });

    group('getOKRTracking', () {
      test('forwards okrKeyResult and returns tracking', () async {
        when(
          () => mockRepo.getOKRTracking(
            okrKeyResult: any(named: 'okrKeyResult'),
          ),
        ).thenAnswer((_) async => okrTracking);

        final result = await useCase.getOKRTracking(okrKeyResult: 11);

        expect(result.title, 'KR 1');
        verify(() => mockRepo.getOKRTracking(okrKeyResult: 11)).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.getOKRTracking(
            okrKeyResult: any(named: 'okrKeyResult'),
          ),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.getOKRTracking(okrKeyResult: 11),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('submitTrackingValue', () {
      test('forwards request list and returns values', () async {
        when(
          () => mockRepo.submitTrackingValue(
            request: any(named: 'request'),
          ),
        ).thenAnswer((_) async => [setTrackingValue]);

        final result = await useCase.submitTrackingValue(
          request: [trackingRequest],
        );

        expect(result.first.actualValue, '50');
        verify(
          () => mockRepo.submitTrackingValue(request: [trackingRequest]),
        ).called(1);
      });

      test('rethrows ValidationException from repository', () async {
        when(
          () => mockRepo.submitTrackingValue(
            request: any(named: 'request'),
          ),
        ).thenThrow(
          ValidationException('Invalid', {'actual_value': ['required']}),
        );

        await expectLater(
          () => useCase.submitTrackingValue(request: [trackingRequest]),
          throwsA(isA<ValidationException>()),
        );
      });
    });

    group('getGraphLists', () {
      test('forwards id and returns graph data', () async {
        when(
          () => mockRepo.getGraphLists(id: any(named: 'id')),
        ).thenAnswer((_) async => [graphData]);

        final result = await useCase.getGraphLists(id: 1);

        expect(result.first.name, 'Objective');
        verify(() => mockRepo.getGraphLists(id: 1)).called(1);
      });

      test('rethrows NetworkException from repository', () async {
        when(
          () => mockRepo.getGraphLists(id: any(named: 'id')),
        ).thenThrow(NetworkException('offline'));

        await expectLater(
          () => useCase.getGraphLists(id: 1),
          throwsA(isA<NetworkException>()),
        );
      });
    });

    group('getKeyResultOKRGraph', () {
      test('forwards id, okrId, and filters', () async {
        when(
          () => mockRepo.getKeyResultOKRGraph(
            id: any(named: 'id'),
            okrId: any(named: 'okrId'),
            filters: any(named: 'filters'),
          ),
        ).thenAnswer((_) async => keyResultGraph);

        final result = await useCase.getKeyResultOKRGraph(
          id: 11,
          okrId: 1,
          filters: {'period': '2024'},
        );

        expect(result.name, 'KR 1');
        verify(
          () => mockRepo.getKeyResultOKRGraph(
            id: 11,
            okrId: 1,
            filters: {'period': '2024'},
          ),
        ).called(1);
      });

      test('rethrows ServerException from repository', () async {
        when(
          () => mockRepo.getKeyResultOKRGraph(
            id: any(named: 'id'),
            okrId: any(named: 'okrId'),
            filters: any(named: 'filters'),
          ),
        ).thenThrow(ServerException('Failed'));

        await expectLater(
          () => useCase.getKeyResultOKRGraph(id: 11, okrId: 1),
          throwsA(isA<ServerException>()),
        );
      });
    });
  });
}
